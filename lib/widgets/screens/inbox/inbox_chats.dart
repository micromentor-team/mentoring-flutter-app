import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_chat_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/base/operation_result.dart';
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
  Future<OperationResult<List<ChannelForUser>>>? _userChannels;

  @override
  void initState() {
    super.initState();
    _user = Provider.of<UserProvider>(context, listen: false).user;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userChannels = Provider.of<ChannelsProvider>(
      context,
      listen: false,
    ).queryUserChannels(userId: _user!.id);
  }

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
          child: ChangeNotifierProvider(
            create: (context) => InboxChatTileModel(
              context: context,
              channelId: channels[i].id,
              channelName: channelName,
              channelAvatarUrl: channelAvatarUrl,
              authenticatedUserId: _user!.id,
            ),
            child: const InboxChatListTile(),
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
    return FutureBuilder(
      future: _userChannels,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
            snapshot: snapshot,
            onReady: () {
              final messagesProvider = Provider.of<MessagesProvider>(
                context,
                listen: false,
              );
              final List<ChannelForUser> channels =
                  snapshot.data?.response ?? [];
              return ListView(
                children: _createContentList(
                  channels,
                  messagesProvider,
                ),
              );
            });
      },
    );
  }
}
