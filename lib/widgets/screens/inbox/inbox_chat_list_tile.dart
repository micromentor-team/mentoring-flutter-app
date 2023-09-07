import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';

class InboxChatListTile extends StatefulWidget {
  final bool isArchivedForUser;

  const InboxChatListTile({
    super.key,
    required this.isArchivedForUser,
  });

  @override
  State<InboxChatListTile> createState() => _InboxChatListTileState();
}

class _InboxChatListTileState extends State<InboxChatListTile> {
  late final InboxChatTileModel _inboxChatTileModel;
  late final String _nextRoute;

  @override
  void initState() {
    super.initState();
    _inboxChatTileModel = Provider.of<InboxChatTileModel>(
      context,
      listen: false,
    );
    _inboxChatTileModel.createChannelSubscription();
    _nextRoute = widget.isArchivedForUser
        ? '${Routes.inboxArchived.path}/${_inboxChatTileModel.channelId}'
        : '${Routes.inboxChats.path}/${_inboxChatTileModel.channelId}';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _inboxChatTileModel.refresh();
  }

  @override
  void dispose() {
    _inboxChatTileModel.cancelChannelSubscription();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InboxChatTileModel>(
      builder: (context, inboxChatTileModel, _) {
        final bool isHighlighted = inboxChatTileModel.unseenMessageCount > 0;
        return AppUtility.widgetForAsyncState(
          state: inboxChatTileModel.state,
          onReady: () => InboxListTile(
            avatarUrl: inboxChatTileModel.channelAvatarUrl,
            fullName: inboxChatTileModel.channelName,
            date: inboxChatTileModel.lastMessage?.createdAt.toLocal() ??
                DateTime.now(),
            message: inboxChatTileModel.lastMessage?.messageText ?? '',
            notifications: inboxChatTileModel.unseenMessageCount,
            highlightTileTitle: isHighlighted,
            highlightTileText: isHighlighted,
            onPressed: () => context.push(_nextRoute),
          ),
        );
      },
    );
  }
}
