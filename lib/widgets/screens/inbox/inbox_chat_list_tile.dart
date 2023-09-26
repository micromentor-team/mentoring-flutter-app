import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_list_tile.dart';

import '../../../constants/app_constants.dart';

class InboxChatListTile extends StatefulWidget {
  final String channelId;
  final String? channelAvatarUrl;
  final String channelName;
  final bool isArchivedForUser;
  final DateTime latestMessageDate;
  final String latestMessageText;
  final int unseenMessageCount;

  const InboxChatListTile({
    super.key,
    required this.isArchivedForUser,
    required this.channelId,
    this.channelAvatarUrl,
    required this.channelName,
    required this.unseenMessageCount,
    required this.latestMessageDate,
    required this.latestMessageText,
  });

  @override
  State<InboxChatListTile> createState() => _InboxChatListTileState();
}

class _InboxChatListTileState extends State<InboxChatListTile> {
  late final String _nextRoute;

  @override
  void initState() {
    super.initState();
    _nextRoute = widget.isArchivedForUser
        ? '${Routes.inboxArchived.path}/${widget.channelId}'
        : '${Routes.inboxChats.path}/${widget.channelId}';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final bool isHighlighted = widget.unseenMessageCount > 0;
    return InboxListTile(
      avatarUrl: widget.channelAvatarUrl,
      fullName: widget.channelName,
      date: widget.latestMessageDate,
      message: widget.latestMessageText,
      notifications: widget.unseenMessageCount,
      highlightTileTitle: isHighlighted,
      highlightTileText: isHighlighted,
      onPressed: () => context.push(_nextRoute),
    );
  }
}
