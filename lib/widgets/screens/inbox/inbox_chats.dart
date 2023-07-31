import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/channels_provider.dart';
import '../../../providers/messages_provider.dart';
import '../../../providers/models/scaffold_model.dart';
import '../../../providers/user_provider.dart';

class InboxChatsScreen extends StatefulWidget {
  const InboxChatsScreen({super.key});

  @override
  State<InboxChatsScreen> createState() => _InboxChatsScreenState();
}

class _InboxChatsScreenState extends State<InboxChatsScreen>
    with RouteAwareMixin<InboxChatsScreen> {
  AuthenticatedUser? _user;

  String _channelName(ChannelForUser channel) {
    final participant =
        channel.participants.firstWhere((item) => item.user.id != _user!.id);
    return participant.user.fullName!;
  }

  String? _channelAvatarUrl(ChannelForUser channel) {
    String? avatarUrl = channel.participants
        .where((element) => element.user.id != _user!.id)
        .first
        .user
        .avatarUrl;
    return avatarUrl;
  }

  List<UnseenMessage> _channelUnseenMessages(
    List<UnseenMessage>? unseenMessages,
    ChannelForUser channel,
  ) {
    if (unseenMessages == null) {
      return [];
    }
    return unseenMessages
        .where((element) =>
            element.channelId == channel.id && element.createdBy != _user!.id)
        .toList();
  }

  List<Widget> _createContentList(
    List<ChannelForUser> channels,
    List<UnseenMessage> unseenMessages,
  ) {
    final List<DismissibleTile> tiles = [];
    if (channels.isEmpty) {
      return [];
    }

    for (int i = 0; i < channels.length; i++) {
      final ChannelForUser channel = channels[i];
      final String channelName = _channelName(channel);
      final String? channelAvatarUrl = _channelAvatarUrl(channel);
      final List<UnseenMessage> channelUnseenMessages =
          _channelUnseenMessages(unseenMessages, channel);

      tiles.add(
        DismissibleTile(
          tileId: channel.id,
          onDismissed: () {
            DebugLogger.verbose('Dismissed tile for channel ${channel.id}');
            int tileIndexToRemove = -1;
            for (int i = 0; i < tiles.length; i++) {
              if (tiles[i].tileId == channel.id) {
                tileIndexToRemove = i;
                break;
              }
            }
            setState(() {
              tiles.removeAt(tileIndexToRemove);
            });
          },
          icon: Icons.archive_outlined,
          child: InboxListTile(
            avatarUrl: channelAvatarUrl,
            fullName: channelName,
            date: DateTime.now().subtract(Duration(
                days: i)), // TODO(m-rosario): Use date from last message
            message: '', // TODO(m-rosario): Get text from last message
            notifications: channelUnseenMessages.length,
            onPressed: () =>
                context.push('${Routes.inboxChats.path}/${channel.id}'),
          ),
        ),
      );
    }

    if (tiles.isEmpty) {
      return [];
    }
    List<Widget> contentList = [tiles.first];
    for (int i = 1; i < tiles.length; i++) {
      contentList.addAll([
        const Divider(
          height: 0,
          indent: Insets.paddingMedium,
          endIndent: Insets.paddingMedium,
        ),
        tiles[i],
      ]);
    }
    return contentList;
  }

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInboxScaffold(context);
    });
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  @override
  Widget build(BuildContext context) {
    final channelsProvider = Provider.of<ChannelsProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final messagesProvider = Provider.of<MessagesProvider>(context);
    _user = userProvider.user;
    return channelsProvider.queryUserChannels(
      userId: _user!.id,
      onData: (userChannelsData, {refetch, fetchMore}) {
        final List<ChannelForUser> channels = userChannelsData.response ?? [];
        return messagesProvider.unseenMessages(
          onData: (unseenMessagesData, {refetch, fetchMore}) {
            final List<UnseenMessage> unseenMessages =
                unseenMessagesData.response ?? [];
            final List<Widget> contentList = _createContentList(
              channels,
              unseenMessages,
            );
            return SafeArea(
              child: ListView(
                children: contentList,
              ),
            );
          },
        );
      },
    );
  }
}
