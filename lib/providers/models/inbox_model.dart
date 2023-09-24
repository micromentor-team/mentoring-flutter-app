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
  // Providers
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;
  final InvitationsProvider _invitationsProvider;
  final UserProvider _userProvider;

  // Notification counters
  int _inboxChatNotifications = 0;
  int _inboxArchivedNotifications = 0;
  int _inboxInvitesNotifications = 0;
  int get inboxChatNotifications => _inboxChatNotifications;
  int get inboxArchivedNotifications => _inboxArchivedNotifications;
  int get inboxInvitesNotifications => _inboxInvitesNotifications;
  int get inboxNotifications =>
      _inboxChatNotifications + _inboxInvitesNotifications;

  // Invitations
  List<ReceivedChannelInvitation>? _pendingReceivedInvitations;
  List<SentChannelInvitation>? _pendingSentInvitations;
  List<ReceivedChannelInvitation>? get pendingReceivedInvitations =>
      _pendingReceivedInvitations;
  List<SentChannelInvitation>? get pendingSentInvitations =>
      _pendingSentInvitations;

  // Channels
  List<ChannelForUser>? _activeChannels;
  ChannelMessageInbox? _unseenMessages;
  List<ChannelForUser> get activeChannels => _activeChannels!;
  ChannelMessageInbox? get unseenMessages => _unseenMessages;
  List<StreamSubscription<QueryResult<Object?>>>? _streamSubscriptions;

  // AsyncState
  AsyncState _channelsState = AsyncState.ready;
  AsyncState _receivedInvitationsState = AsyncState.ready;
  AsyncState _sentInvitationsState = AsyncState.ready;
  AsyncState get channelsState => _channelsState;
  AsyncState get receivedInvitationsState => _receivedInvitationsState;
  AsyncState get sentInvitationsState => _sentInvitationsState;
  AsyncState get invitesState {
    if (_receivedInvitationsState == AsyncState.error ||
        _sentInvitationsState == AsyncState.error) {
      return AsyncState.error;
    } else if (_receivedInvitationsState == AsyncState.loading ||
        _sentInvitationsState == AsyncState.loading) {
      return AsyncState.loading;
    } else {
      return AsyncState.ready;
    }
  }

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
    final int channelIndex = _activeChannels?.indexWhere(
          (e) => e.id == channelId,
        ) ??
        -1;
    if (channelIndex != -1) {
      _activeChannels![channelIndex] = _activeChannels![channelIndex].copyWith(
        isArchivedForMe: isArchivedForMe,
      );
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  bool hasChannelWithUser(String userId) {
    return _activeChannels?.any(
          (e) => e.participants.any((p) => p.user.id == userId),
        ) ??
        false;
  }

  Future<void> refreshAll() async {
    await refreshActiveChannels();
    refreshInboxChatNotifications();
    refreshInboxInviteNotifications();
    refreshPendingReceivedInvitations();
    refreshPendingSentInvitations();
  }

  Future<void> refreshInboxChatNotifications() async {
    final allUnseenMessagesResult = await _messagesProvider.allUnseenMessages();
    if (allUnseenMessagesResult.gqlQueryResult.hasException) {
      final String e =
          allUnseenMessagesResult.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport(
          'Could not retrieve inbox chat notifications: $e');
      return;
    } else {
      _unseenMessages = allUnseenMessagesResult.response!;
      _inboxChatNotifications = _unseenMessages?.unseenMessages?.length ?? 0;
      _inboxArchivedNotifications =
          _unseenMessages?.unseenArchivedMessages?.length ?? 0;
      if (hasListeners) {
        notifyListeners();
      }
    }
  }

  Future<void> refreshInboxInviteNotifications() async {
    final receivedInvitationsResult =
        await _invitationsProvider.getReceivedInvitations(onlyPending: true);
    if (receivedInvitationsResult.gqlQueryResult.hasException) {
      final String e =
          receivedInvitationsResult.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport(
          'Could not retrieve inbox invite notifications: $e');
      return;
    } else {
      // TODO: Filter for unread invites
      _inboxInvitesNotifications =
          receivedInvitationsResult.response?.length ?? 0;
      if (hasListeners) {
        notifyListeners();
      }
    }
  }

  Future<void> refreshPendingReceivedInvitations() async {
    _receivedInvitationsState = AsyncState.loading;
    _pendingReceivedInvitations = null;
    final result = await _invitationsProvider.getReceivedInvitations(
      onlyPending: true,
    );
    if (result.gqlQueryResult.hasException) {
      _receivedInvitationsState = AsyncState.error;
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport(
        'Could not retrieve received invitations: $e',
      );
      return;
    } else {
      _pendingReceivedInvitations = result.response ?? [];
      _pendingReceivedInvitations
          ?.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      _receivedInvitationsState = AsyncState.ready;
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> refreshPendingSentInvitations() async {
    _sentInvitationsState = AsyncState.loading;
    _pendingSentInvitations = null;
    final result = await _invitationsProvider.getSentInvitations(
      onlyPending: true,
    );
    if (result.gqlQueryResult.hasException) {
      _sentInvitationsState = AsyncState.error;
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not retrieve sent invitations: $e');
      return;
    } else {
      _pendingSentInvitations = result.response ?? [];
      _pendingSentInvitations
          ?.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      _sentInvitationsState = AsyncState.ready;
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> refreshActiveChannels() async {
    _channelsState = AsyncState.loading;
    _activeChannels = null;
    final previousActiveChannelsCount = _activeChannels?.length ?? 0;
    final result = await _channelsProvider.queryUserChannels(
      userId: _userProvider.user!.id,
    );
    if (result.gqlQueryResult.hasException) {
      _channelsState = AsyncState.error;
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not retrieve active channels: $e');
      return;
    } else {
      _activeChannels = result.response ?? [];
      _channelsState = AsyncState.ready;
    }
    if (hasListeners) {
      notifyListeners();
    }
    if (previousActiveChannelsCount != _activeChannels!.length) {
      _refreshSubscriptions();
    }
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
    final int channelIndex = _activeChannels?.indexWhere(
          (e) => e.id == channelId,
        ) ??
        -1;
    if (channelIndex != -1) {
      _activeChannels![channelIndex] = _activeChannels![channelIndex].copyWith(
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
    for (ChannelForUser channel in _activeChannels!) {
      _streamSubscriptions!.add(
        _createChannelSubscription(
          channelId: channel.id,
        ),
      );
    }
  }

  StreamSubscription<QueryResult<Object?>> _createChannelSubscription({
    required String channelId,
  }) {
    return _channelsProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: (event) async {
        // TODO: Subscribe to invites to know when a sent invitation was accepted/declined by other user, and refresh channels/invites accordingly
        // TODO: Subscribe to know when a new invitation is received and refresh pending invites accordingly
        switch (event.eventType) {
          case Enum$ChannelChangedEventType.messageCreated:
            if (event.channelId == channelId) {
              await _refreshLatestMessage(channelId);
              refreshInboxChatNotifications();
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
