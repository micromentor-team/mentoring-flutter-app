import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/empty_state_message.dart';
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
  late final ScaffoldModel _scaffoldModel;
  late Future<List<ChannelForUser>> _userChannels;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _authenticatedUser = Provider.of<UserProvider>(context, listen: false).user;
    _channelsProvider = Provider.of<ChannelsProvider>(
      context,
      listen: false,
    );
    _scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
    _queryUserChannels();
  }

  void _queryUserChannels() {
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scaffoldModel.setInboxScaffold(router: router);
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

    // Sort channels by latestMessage creation time, starting from most recent
    channels.sort(
      (a, b) => b.latestMessage.createdAt.compareTo(a.latestMessage.createdAt),
    );

    for (int i = 0; i < channels.length; i++) {
      final ChannelForUser channel = channels[i];
      final ChannelForUserParticipant otherParticipant = channel.participants
          .firstWhere((item) => item.user.id != _authenticatedUser!.id);
      final String channelName = otherParticipant.user.fullName!;
      final String? channelAvatarUrl = otherParticipant.user.avatarUrl;

      tiles.add(
        DismissibleTile(
          tileId: channel.id,
          onDismissed: () async {
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
            // Refresh Scaffold and channels only once the change is live.
            final bool updateCompleted =
                await CrashHandler.retryOnException<bool>(
              () async {
                final result = await _channelsProvider.findChannelById(
                    channelId: channel.id);
                final bool? isArchived = result.response?.isArchivedForMe;
                if (isArchived == null ||
                    isArchived == widget.isArchivedForUser) {
                  throw RetryException(
                    message: 'Waiting for isArchivedForMe to update...',
                  );
                }
                return true;
              },
              onFailOperation: () => false,
              logFailures: false,
            );
            if (updateCompleted) {
              _refreshScaffold();
              _queryUserChannels();
              setState(() {});
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
            if (channels.isEmpty) {
              return EmptyStateMessage(
                icon: Icons.chat,
                text: _l10n.emptyStateChats,
              );
            }
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
