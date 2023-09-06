import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:provider/provider.dart';

class MyChannelInvitationsModel extends ChangeNotifier {
  final InvitationsProvider _invitationsProvider;

  List<ReceivedChannelInvitation> _receivedInvitations = [];
  List<SentChannelInvitation> _sentInvitations = [];
  AsyncState _state = AsyncState.loading;

  List<ReceivedChannelInvitation> get receivedInvitations =>
      _receivedInvitations;
  List<SentChannelInvitation> get sentInvitations => _sentInvitations;
  AsyncState get state => _state;

  MyChannelInvitationsModel({
    required BuildContext context,
  }) : _invitationsProvider = Provider.of<InvitationsProvider>(
          context,
          listen: false,
        );

  Future<void> refreshReceivedInvitations({required bool onlyPending}) async {
    _state = AsyncState.loading;
    final result = await _invitationsProvider.getReceivedInvitations(
      onlyPending: onlyPending,
    );
    if (result.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _receivedInvitations = result.response ?? [];
      _receivedInvitations.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      _state = AsyncState.ready;
    }
    notifyListeners();
  }

  Future<void> refreshSentInvitations({required bool onlyPending}) async {
    _state = AsyncState.loading;
    final result = await _invitationsProvider.getSentInvitations(
      onlyPending: onlyPending,
    );
    if (result.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _sentInvitations = result.response ?? [];
      _sentInvitations.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      _state = AsyncState.ready;
    }
    notifyListeners();
  }
}
