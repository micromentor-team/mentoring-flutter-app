import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:provider/provider.dart';

import '../messages_provider.dart';

class ChatModel extends ChangeNotifier {
  final String channelId;
  final MessagesProvider messagesProvider;
  List<ChannelMessage>? _channelMessages;
  StreamSubscription<QueryResult<Object?>>? _streamSubscription;

  List<ChannelMessage> get channelMessages => _channelMessages ?? [];

  ChatModel({required BuildContext context, required this.channelId})
      : messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        );

  Future<List<ChannelMessage>> refreshChannelMessages() async {
    return messagesProvider
        .findChannelMessages(
      fetchFromNetworkOnly: true,
      input: Input$ChannelMessageListFilter(channelId: channelId),
    )
        .then((result) {
      _channelMessages = result.response ?? [];
      notifyListeners();
      return _channelMessages!;
    });
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = messagesProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: () => refreshChannelMessages(),
    );
  }

  void cancelChannelSubscription() {
    _streamSubscription?.cancel();
  }
}
