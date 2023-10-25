import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../../constants/constants.dart';
import '../../../../models/inbox_model.dart';
import '../../../../services/graphql/providers/channels_provider.dart';
import '../../../../services/graphql/providers/messages_provider.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/errors/crash_handler.dart';
import '../../../../utilities/errors/exceptions.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../../utilities/utility.dart';
import '../components/empty_state_message.dart';
import '../components/inbox_appbar_factory.dart';
import '../components/inbox_chat_list_tile.dart';
import '../components/inbox_drawer_factory.dart';

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
  late final InboxModel _inboxModel;
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
    _inboxModel = Provider.of<InboxModel>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _l10n = AppLocalizations.of(context)!;
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
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall,
              end: Insets.paddingMedium,
            ),
            child: InboxChatListTile(
              isArchivedForUser: widget.isArchivedForUser,
              channelId: channels[i].id,
              channelName: channelName,
              channelAvatarUrl: channelAvatarUrl,
              latestMessageDate: channel.latestMessage.createdAt.toLocal(),
              latestMessageText: channel.latestMessage.messageText ?? '',
              unseenMessageCount: _inboxModel.getUnseenMessageCount(
                channelId: channels[i].id,
                isArchivedChannel: widget.isArchivedForUser,
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
      _inboxModel.setChannelArchived(
        channelId: channelId,
        isArchivedForMe: !widget.isArchivedForUser,
      );
      await _inboxModel.refreshUnseenMessages();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setParams(
        appBar: InboxAppBarFactory.createInboxAppBar(
          router: router,
          currentRoute: widget.isArchivedForUser
              ? Routes.inboxArchived.path
              : Routes.inboxChats.path,
        ),
        drawer: InboxDrawerFactory.createInboxDrawer(),
      );
    });
    return Selector<InboxModel,
        Tuple2<ChannelMessageInbox, List<ChannelForUser>>>(
      selector: (_, inboxModel) => Tuple2(
        inboxModel.unseenMessages!,
        inboxModel.activeChannels,
      ),
      shouldRebuild: (oldValue, newValue) =>
          !(const DeepCollectionEquality.unordered()
              .equals(oldValue, newValue)) ||
          _inboxModel.channelsState != AsyncState.loading,
      builder: (_, __, ___) {
        return AppUtility.widgetForAsyncState(
          state: _inboxModel.channelsState,
          onReady: () {
            final channels = _inboxModel.activeChannels.where(
              (element) {
                return widget.isArchivedForUser == element.isArchivedForMe;
              },
            ).toList();
            if (channels.isEmpty) {
              return EmptyStateMessage(
                icon: Icons.chat,
                text: _l10n.inboxChatsEmptyState,
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
