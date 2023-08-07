import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';

class InboxChatListTile extends StatefulWidget {
  const InboxChatListTile({
    super.key,
  });

  @override
  State<InboxChatListTile> createState() => _InboxChatListTileState();
}

class _InboxChatListTileState extends State<InboxChatListTile> {
  InboxChatTileModel? _inboxChatTileModel;

  @override
  void initState() {
    super.initState();
    _inboxChatTileModel = Provider.of<InboxChatTileModel>(
      context,
      listen: false,
    );
    _inboxChatTileModel!.createChannelSubscription();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _inboxChatTileModel?.refresh();
  }

  @override
  void dispose() {
    _inboxChatTileModel?.createChannelSubscription();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InboxChatTileModel>(
      builder: (context, inboxChatTileModel, child) {
        _inboxChatTileModel = inboxChatTileModel;
        return AppUtility.widgetForAsyncState(
          state: _inboxChatTileModel!.state,
          onReady: () => InboxListTile(
            avatarUrl: _inboxChatTileModel!.channelAvatarUrl,
            fullName: _inboxChatTileModel!.channelName,
            date: _inboxChatTileModel?.lastMessage?.createdAt ?? DateTime.now(),
            message: _inboxChatTileModel?.lastMessage?.messageText ?? '',
            notifications: _inboxChatTileModel?.unseenMessageCount ?? 0,
            onPressed: () => context.push(
                '${Routes.inboxChats.path}/${_inboxChatTileModel!.channelId}'),
          ),
        );
      },
    );
  }
}
