import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_channel.graphql.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/schema.graphql.dart';
import '../../constants/app_constants.dart';
import '../../utilities/errors/crash_handler.dart';
import '../invitations_provider.dart';
import '../messages_provider.dart';

class InboxModel extends ChangeNotifier {
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;
  final InvitationsProvider _invitationsProvider;
  final UserProvider _userProvider;
  int _inboxChatNotifications = 0;
  int _inboxArchivedNotifications = 0;
  int _inboxInvitesNotifications = 0;
  ChannelMessageInbox? _unseenMessages;
  List<ChannelForUser> _activeChannels = [];
  List<StreamSubscription<QueryResult<Object?>>>? _streamSubscriptions;
  AsyncState _state = AsyncState.ready;

  int get inboxChatNotifications => _inboxChatNotifications;
  int get inboxArchivedNotifications => _inboxArchivedNotifications;
  int get inboxInvitesNotifications => _inboxInvitesNotifications;
  int get inboxNotifications =>
      _inboxChatNotifications + _inboxInvitesNotifications;
  List<ChannelForUser> get activeChannels => _activeChannels;
  ChannelMessageInbox? get unseenMessages => _unseenMessages;
  AsyncState get state => _state;

  InboxModel({required BuildContext context})
      : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _channelsProvider = Provider.of<ChannelsProvider>(
          context,
          listen: false,
        ),
        _invitationsProvider = Provider.of<InvitationsProvider>(
          context,
          listen: false,
        ),
        _userProvider = Provider.of<UserProvider>(
          context,
          listen: false,
        );

  int getUnseenMessageCount({
    required String channelId,
    required bool isArchivedChannel,
  }) {
    if (isArchivedChannel) {
      return _unseenMessages?.unseenArchivedMessages
              ?.where((e) => e.channelId == channelId)
              .length ??
          0;
    } else {
      return _unseenMessages?.unseenMessages
              ?.where((e) => e.channelId == channelId)
              .length ??
          0;
    }
  }

  void setChannelArchived({
    required String channelId,
    required bool isArchivedForMe,
  }) {
    final int channelIndex = _activeChannels.indexWhere(
      (e) => e.id == channelId,
    );
    if (channelIndex != -1) {
      _activeChannels[channelIndex] = _activeChannels[channelIndex].copyWith(
        isArchivedForMe: isArchivedForMe,
      );
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> refreshAllNotifications() async {
    _state = AsyncState.loading;
    await refreshInboxChatNotifications(notify: false);
    await refreshInboxInviteNotifications(notify: false);
    if (hasListeners) {
      notifyListeners();
    }
    _state = AsyncState.ready;
  }

  Future<void> refreshInboxChatNotifications({bool notify = true}) async {
    _state = AsyncState.loading;
    final allUnseenMessagesResult = await _messagesProvider.allUnseenMessages();
    if (allUnseenMessagesResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _unseenMessages = allUnseenMessagesResult.response;
      _inboxChatNotifications = _unseenMessages?.unseenMessages?.length ?? 0;
      _inboxArchivedNotifications =
          _unseenMessages?.unseenArchivedMessages?.length ?? 0;
      if (hasListeners && notify) {
        notifyListeners();
      }
      _state = AsyncState.ready;
    }
  }

  Future<void> refreshInboxInviteNotifications({bool notify = true}) async {
    _state = AsyncState.loading;
    final receivedInvitationsResult =
        await _invitationsProvider.getReceivedInvitations(onlyPending: true);
    if (receivedInvitationsResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      // TODO: Filter for unread invites
      _inboxInvitesNotifications =
          receivedInvitationsResult.response?.length ?? 0;
      if (hasListeners && notify) {
        notifyListeners();
      }
      _state = AsyncState.ready;
    }
  }

  Future<void> refreshActiveChannels() async {
    _state = AsyncState.loading;
    final previousActiveChannelsCount = _activeChannels.length;
    _activeChannels = (await _channelsProvider.queryUserChannels(
                userId: _userProvider.user!.id))
            .response ??
        [];
    if (previousActiveChannelsCount != _activeChannels.length) {
      _refreshSubscriptions();
    }
    _state = AsyncState.ready;
  }

  Future<void> _refreshLatestMessage(String channelId) async {
    // TODO: Possible race condition here if the query executes before the mutation completes, consider polling result
    final latestMessageResult =
        await _messagesProvider.findChannelLatestMessage(
      channelId: channelId,
    );
    if (latestMessageResult.gqlQueryResult.hasException) {
      final String e = latestMessageResult.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not retrieve latest message: $e');
      return;
    }
    final int channelIndex = _activeChannels.indexWhere(
      (e) => e.id == channelId,
    );
    if (channelIndex != -1) {
      _activeChannels[channelIndex] = _activeChannels[channelIndex].copyWith(
        latestMessage:
            Query$FindChannelsForUser$findChannelsForUser$latestMessage(
          messageText: latestMessageResult.response?.messageText,
          createdAt: latestMessageResult.response?.createdAt.toLocal() ??
              DateTime.now(),
          createdBy: latestMessageResult.response?.createdBy,
        ),
      );
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> _refreshSubscriptions() async {
    if (_streamSubscriptions != null) {
      _cancelChannelSubscriptions();
    }
    _streamSubscriptions = [];
    for (ChannelForUser channel in _activeChannels) {
      _streamSubscriptions!.add(_createChannelSubscription(channel.id));
    }
  }

  StreamSubscription<QueryResult<Object?>> _createChannelSubscription(
      String channelId) {
    return _channelsProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: (event) async {
        switch (event.eventType) {
          case Enum$ChannelChangedEventType.messageCreated:
            if (event.channelId == channelId) {
              await _refreshLatestMessage(channelId);
              await refreshInboxChatNotifications();
            }
            return;
          default:
            return;
        }
      },
    );
  }

  void _cancelChannelSubscriptions() {
    for (StreamSubscription subscription in _streamSubscriptions!) {
      subscription.cancel();
    }
    _streamSubscriptions = null;
  }
}
