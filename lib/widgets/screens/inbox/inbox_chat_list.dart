import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_chat_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/channels_provider.dart';
import '../../../providers/models/scaffold_model.dart';
import '../../../providers/user_provider.dart';

class InboxChatListScreen extends StatefulWidget {
  final bool isArchivedForUser;

  const InboxChatListScreen({
    super.key,
    required this.isArchivedForUser,
  });

  @override
  State<InboxChatListScreen> createState() => _InboxChatListScreenState();
}

class _InboxChatListScreenState extends State<InboxChatListScreen>
    with RouteAwareMixin<InboxChatListScreen> {
  late final AuthenticatedUser? _authenticatedUser;
  late final ChannelsProvider _channelsProvider;
  late Future<List<ChannelForUser>> _userChannels;

  @override
  void initState() {
    super.initState();
    _authenticatedUser = Provider.of<UserProvider>(context, listen: false).user;
    _channelsProvider = Provider.of<ChannelsProvider>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userChannels = _channelsProvider
        .queryUserChannels(userId: _authenticatedUser!.id)
        .then((result) {
      return result.response?.where(
            (element) {
              return widget.isArchivedForUser == element.isArchivedForMe;
            },
          ).toList() ??
          [];
    });
  }

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInboxScaffold(context: context);
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

  List<Widget> _createContentList(
    List<ChannelForUser> channels,
  ) {
    final List<DismissibleTile> tiles = [];
    if (channels.isEmpty) {
      return [];
    }

    for (int i = 0; i < channels.length; i++) {
      final ChannelForUser channel = channels[i];
      final ChannelForUserParticipant otherParticipant = channel.participants
          .firstWhere((item) => item.user.id != _authenticatedUser!.id);
      final String channelName = otherParticipant.user.fullName!;
      final String? channelAvatarUrl = otherParticipant.user.avatarUrl;

      tiles.add(
        DismissibleTile(
          tileId: channel.id,
          onDismissed: () {
            int tileIndexToRemove = -1;
            for (int i = 0; i < tiles.length; i++) {
              if (tiles[i].tileId == channel.id) {
                tileIndexToRemove = i;
                break;
              }
            }
            tiles.removeAt(tileIndexToRemove);
            if (widget.isArchivedForUser) {
              _channelsProvider.unarchiveChannelForAuthenticatedUser(
                channelId: channel.id,
              );
            } else {
              _channelsProvider.archiveChannelForAuthenticatedUser(
                channelId: channel.id,
              );
            }
          },
          icon: widget.isArchivedForUser
              ? Icons.unarchive_outlined
              : Icons.archive_outlined,
          child: ChangeNotifierProvider(
            create: (context) => InboxChatTileModel(
              context: context,
              channelId: channels[i].id,
              channelName: channelName,
              channelAvatarUrl: channelAvatarUrl,
              authenticatedUserId: _authenticatedUser!.id,
            ),
            child: InboxChatListTile(
              isArchivedForUser: widget.isArchivedForUser,
            ),
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _userChannels,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            final List<ChannelForUser> channels = snapshot.data ?? [];
            return ListView(
              children: _createContentList(
                channels,
              ),
            );
          },
        );
      },
    );
  }
}
