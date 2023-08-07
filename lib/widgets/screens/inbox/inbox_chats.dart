import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../__generated/schema/schema.graphql.dart';
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

  List<Widget> _createContentList(
    List<ChannelForUser> channels,
    MessagesProvider messagesProvider,
  ) {
    final List<DismissibleTile> tiles = [];
    if (channels.isEmpty) {
      return [];
    }

    for (int i = 0; i < channels.length; i++) {
      final ChannelForUser channel = channels[i];
      final String channelName = _channelName(channel);
      final String? channelAvatarUrl = _channelAvatarUrl(channel);

      final futureChannelMessages = messagesProvider.findChannelMessages(
        input: Input$ChannelMessageListFilter(channelId: channel.id),
      );

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
          child: FutureBuilder(
            future: futureChannelMessages,
            builder: (context, snapshot) {
              List<ChannelMessage> messages = snapshot.data?.response ?? [];
              int unseenMessageCount = 0;
              ChannelMessage? lastMessage;
              // Initialize lastMessageTime to Epoch in order for the search
              // algorithm to work when looking for the most recent date.
              DateTime? lastMessageTime = messages.isEmpty
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(0);
              for (int i = 0; i < messages.length; i++) {
                if (messages[i].createdAt.isAfter(lastMessageTime!)) {
                  lastMessage = messages[i];
                  lastMessageTime = lastMessage.createdAt;
                }
                bool isSeen = messages[i]
                        .statuses
                        ?.any((status) => status.seenAt != null) ??
                    false;
                if (!isSeen) {
                  unseenMessageCount++;
                }
              }
              return InboxListTile(
                avatarUrl: channelAvatarUrl,
                fullName: channelName,
                date: lastMessageTime ?? DateTime.now(),
                message: lastMessage != null ? lastMessage.messageText : '',
                notifications: unseenMessageCount,
                onPressed: () =>
                    context.push('${Routes.inboxChats.path}/${channel.id}'),
              );
            },
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
    final messagesProvider = Provider.of<MessagesProvider>(
      context,
      listen: false,
    );
    _user = userProvider.user;
    return channelsProvider.queryUserChannels(
      userId: _user!.id,
      onData: (userChannelsData, {refetch, fetchMore}) {
        final List<ChannelForUser> channels = userChannelsData.response ?? [];
        return ListView(
          children: _createContentList(
            channels,
            messagesProvider,
          ),
        );
      },
    );
  }
}
