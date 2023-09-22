import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../invitations_provider.dart';
import '../messages_provider.dart';

class NotificationsModel extends ChangeNotifier {
  final MessagesProvider _messagesProvider;
  final InvitationsProvider _invitationsProvider;
  int _inboxChatNotifications = 0;
  int _inboxArchivedNotifications = 0;
  int _inboxInvitesNotifications = 0;

  int get inboxChatNotifications => _inboxChatNotifications;
  int get inboxArchivedNotifications => _inboxArchivedNotifications;
  int get inboxInvitesNotifications => _inboxInvitesNotifications;
  int get inboxNotifications =>
      _inboxChatNotifications + _inboxInvitesNotifications;

  NotificationsModel({required BuildContext context})
      : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _invitationsProvider = Provider.of<InvitationsProvider>(
          context,
          listen: false,
        );

  Future<void> refreshInboxNotifications() async {
    final allUnseenMessagesResult = await _messagesProvider.allUnseenMessages();
    final receivedInvitationsResult =
        await _invitationsProvider.getReceivedInvitations(onlyPending: true);
    if (allUnseenMessagesResult.gqlQueryResult.hasException ||
        receivedInvitationsResult.gqlQueryResult.hasException) {
    } else {
      _inboxChatNotifications =
          allUnseenMessagesResult.response?.unseenMessages?.length ?? 0;
      _inboxArchivedNotifications =
          allUnseenMessagesResult.response?.unseenArchivedMessages?.length ?? 0;
      // TODO: Filter for unread invites
      _inboxInvitesNotifications =
          receivedInvitationsResult.response?.length ?? 0;
      if (hasListeners) {
        notifyListeners();
      }
    }
  }
}
