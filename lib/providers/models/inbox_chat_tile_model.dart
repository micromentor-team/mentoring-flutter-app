import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/schema.graphql.dart';
import '../../constants/app_constants.dart';

class InboxChatTileModel extends ChangeNotifier {
  final String channelId;
  final String channelName;
  final String? channelAvatarUrl;
  final String authenticatedUserId;
  final MessagesProvider messagesProvider;

  StreamSubscription<QueryResult<Object?>>? _streamSubscription;
  FilteredChannelMessage? _lastMessage;
  int _unseenMessageCount = 0;
  AsyncState _state = AsyncState.loading;

  FilteredChannelMessage? get lastMessage => _lastMessage;
  AsyncState get state => _state;
  int get unseenMessageCount => _unseenMessageCount;

  InboxChatTileModel({
    required BuildContext context,
    required this.channelId,
    required this.channelName,
    this.channelAvatarUrl,
    required this.authenticatedUserId,
  }) : messagesProvider = Provider.of<MessagesProvider>(context, listen: false);

  Future<void> refresh() async {
    _state = AsyncState.loading;
    // TODO - Make this query more efficient by fetching last and unseen messages directly
    final result = await messagesProvider.findChannelMessagesWithOptions(
      fetchFromNetworkOnly: true,
      input: Input$ChannelMessageListFilter(channelId: channelId),
      options: Input$FindObjectsOptions(
        includeDeleted: false,
        // TODO limit: 1,
        // TODO sort: [ {"direction": "desc", "field": "createdAt"} ],
      ),
    );
    if (result.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _state = AsyncState.ready;
      _lastMessage = result.response?.last;
      _unseenMessageCount = _getUnseenMessageCount(result.response ?? []);
    }
    notifyListeners();
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = messagesProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: () => refresh(),
    );
  }

  void cancelChannelSubscription() {
    _streamSubscription?.cancel();
  }

  int _getUnseenMessageCount(List<FilteredChannelMessage> messages) {
    int unseenMessageCount = 0;
    final notMyMessages = messages
        .where((element) => element.createdBy != authenticatedUserId)
        .toList();
    for (int i = 0; i < notMyMessages.length; i++) {
      bool isSeen = notMyMessages[i].statuses?.any((status) =>
              status.seenAt != null && status.userId == authenticatedUserId) ??
          false;
      if (!isSeen) {
        unseenMessageCount++;
      }
    }
    return unseenMessageCount;
  }
}
