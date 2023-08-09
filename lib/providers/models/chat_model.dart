import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../messages_provider.dart';

class ChatModel extends ChangeNotifier {
  final String channelId;
  final MessagesProvider _messagesProvider;
  List<ChannelMessage>? _channelMessages;
  StreamSubscription<QueryResult<Object?>>? _streamSubscription;
  AsyncState _state = AsyncState.loading;

  List<ChannelMessage> get channelMessages => _channelMessages ?? [];
  AsyncState get state => _state;

  ChatModel({
    required BuildContext context,
    required this.channelId,
  }) : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        );

  Future<void> refreshChannelMessages() async {
    _state = AsyncState.loading;
    final result = await _messagesProvider.findChannelMessages(
      fetchFromNetworkOnly: true,
      input: Input$ChannelMessageListFilter(channelId: channelId),
    );
    if (result.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _state = AsyncState.ready;
      _channelMessages = result.response ?? [];
    }
    notifyListeners();
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = _messagesProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: () => refreshChannelMessages(),
    );
  }

  void cancelChannelSubscription() {
    _streamSubscription?.cancel();
  }
}
