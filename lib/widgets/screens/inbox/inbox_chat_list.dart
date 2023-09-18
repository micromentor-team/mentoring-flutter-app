import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/inbox_chat_tile_model.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/empty_state_message.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_chat_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/channels_provider.dart';
import '../../../providers/user_provider.dart';
import '../../../utilities/navigation_mixin.dart';

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
    with NavigationMixin<InboxChatListScreen> {
  late final AuthenticatedUser? _authenticatedUser;
  late final ChannelsProvider _channelsProvider;
  late Future<List<ChannelForUser>> _userChannels;
  late AppLocalizations _l10n;
  late List<SwipeActionCell> _tiles;

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
    if (!pageRoute.isCurrent) return;
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

  List<Widget> _createContentList(
    List<ChannelForUser> channels,
  ) {
    final ThemeData theme = Theme.of(context);
    _tiles = [];

    // Sort channels by latestMessage creation time, starting from most recent
    channels.sort(
      (a, b) => b.latestMessage.createdAt
          .toLocal()
          .compareTo(a.latestMessage.createdAt.toLocal()),
    );

    for (int i = 0; i < channels.length; i++) {
      final ChannelForUser channel = channels[i];
      final ChannelForUserParticipant otherParticipant = channel.participants
          .firstWhere((item) => item.user.id != _authenticatedUser!.id);
      final String channelName = otherParticipant.user.fullName!;
      final String? channelAvatarUrl = otherParticipant.user.avatarUrl;

      _tiles.add(
        SwipeActionCell(
          key: ValueKey(channel.id),
          trailingActions: <SwipeAction>[
            SwipeAction(
              icon: Icon(
                widget.isArchivedForUser
                    ? Icons.unarchive_outlined
                    : Icons.archive_outlined,
                color: theme.colorScheme.primary,
              ),
              onTap: (CompletionHandler handler) async {
                await handler(true);
                _dismissTile(channel.id);
              },
              color: theme.colorScheme.primaryContainer,
            ),
          ],
          child: ChangeNotifierProvider(
            create: (context) => InboxChatTileModel(
              context: context,
              channelId: channels[i].id,
              channelName: channelName,
              channelAvatarUrl: channelAvatarUrl,
              authenticatedUserId: _authenticatedUser!.id,
              isArchivedChannel: widget.isArchivedForUser,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: Insets.paddingSmall,
                end: Insets.paddingMedium,
              ),
              child: InboxChatListTile(
                isArchivedForUser: widget.isArchivedForUser,
              ),
            ),
          ),
        ),
      );
    }

    List<Widget> contentList = [_tiles.first];
    for (int i = 1; i < _tiles.length; i++) {
      contentList.addAll([
        const Divider(
          height: 0,
          indent: Insets.paddingMedium,
          endIndent: Insets.paddingMedium,
        ),
        _tiles[i],
      ]);
    }
    return contentList;
  }

  void _dismissTile(String channelId) async {
    int tileIndexToRemove = -1;
    for (int i = 0; i < _tiles.length; i++) {
      if ((_tiles[i].key as ValueKey).value == channelId) {
        tileIndexToRemove = i;
        break;
      }
    }
    _tiles.removeAt(tileIndexToRemove);
    if (widget.isArchivedForUser) {
      _channelsProvider.unarchiveChannelForAuthenticatedUser(
        channelId: channelId,
      );
    } else {
      _channelsProvider.archiveChannelForAuthenticatedUser(
        channelId: channelId,
      );
    }
    // Refresh Scaffold and channels only once the change is live.
    final bool updateCompleted = await CrashHandler.retryOnException<bool>(
      () async {
        final result =
            await _channelsProvider.findChannelById(channelId: channelId);
        final bool? isArchived = result.response?.isArchivedForMe;
        if (isArchived == null || isArchived == widget.isArchivedForUser) {
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
      _queryUserChannels();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setInboxScaffold(router: router);
    });
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
