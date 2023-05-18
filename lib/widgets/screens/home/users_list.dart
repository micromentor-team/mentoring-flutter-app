import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/models/channels/channel.dart';
import '../../../data/models/channels/channels_provider.dart';
import '../../../data/models/user/user.dart';
import '../../../data/models/user/user_provider.dart';
import '../../organisms/user_card.dart';
import '../../organisms/user_expanded_card.dart';
import '../channel_messages/channel_messages.dart';

class Users extends StatelessWidget {
  const Users({Key? key, this.search}) : super(key: key);
  final String? search;

  @override
  Widget build(BuildContext context) {
    return UserChannels(
      search: search,
    );
  }
}

class UserChannels extends StatelessWidget {
  const UserChannels({Key? key, this.search}) : super(key: key);
  final String? search;

  @override
  Widget build(BuildContext context) {
    final channelsProvider = Provider.of<ChannelsProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return channelsProvider.queryUserChannels(
      userId: user?.id,
      onData: (data) {
        final channels = data.map((item) => Channel.fromJson(item)).toList();
        return UsersList(
          channels: channels,
          search: search,
        );
      },
    );
  }
}

class UsersList extends StatelessWidget {
  const UsersList({Key? key, required this.channels, this.search})
      : super(key: key);
  final String? search;

  final List channels;

  _openChannelChatWithUser(context, String userId) async {
    // find the channel with this user
    final channelIndex =
        channels.indexWhere((item) => item.userIds.contains(userId));

    String channelId;
    final navigator = Navigator.of(context);

    if (channelIndex >= 0) {
      channelId = channels[channelIndex].id;

      debugPrint('Found channel for userId $userId channelId $channelId');
    } else {
      debugPrint(
          'Channel not found for userId $userId, create a new channel...');
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final user = userProvider.user;
      final channelsProvider =
          Provider.of<ChannelsProvider>(context, listen: false);
      final userIds = [user?.id, userId];

      print('Create a new channel with userIDS');
      print(userIds);

      channelId = await channelsProvider.createChannel(
          createdBy: user?.id, userIds: userIds);
    }
    navigator.push(
      MaterialPageRoute(
        builder: (context) => ChannelMessagesScreen(
          channelId: channelId,
        ),
      ),
    );
    // if not found create a new channel
  }

  List<User> searchNames(users) {
    if (search != null && search != '') {
      print('SEARCH VALUE $search');
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final currentUser = userProvider.user;

    // final channelsNotByUser =
    //     channels.where((item) => item.createdBy != currentUser?.id);
    // debugPrint('channels not created by this user: $channelsNotByUser.length');
    // print(channelsNotByUser);

    return userProvider.queryAllUsers(
      onLoading: () {
        return const SizedBox.shrink();
      },
      onError: (error) {
        return Text('Error: $error');
      },
      onData: (data) {
        List users = data.reversed
            .where((item) => item['id'] != currentUser?.id)
            .toList();

        users = users.map((item) => User.fromJson(item)).toList();

        users = searchNames(users);

        return ListView.separated(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => const Divider(
            height: 1.0,
          ),
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ExpandableNotifier(
              child: Expandable(
                collapsed: ExpandableButton(
                  child: Card(child: userCard(users, index)),
                ),
                expanded: ExpandableButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: userExpandedCard(
                        users: users,
                        context: context,
                        index: index,
                        onOpenMessage: () {
                          _openChannelChatWithUser(context, users[index].id);
                        }),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
