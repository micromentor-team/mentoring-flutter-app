import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/schema.graphql.dart';
import '../../constants/app_constants.dart';

class InboxChatTileModel extends ChangeNotifier {
  final String channelId;
  final String channelName;
  final String? channelAvatarUrl;
  final String authenticatedUserId;
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;

  StreamSubscription<QueryResult<Object?>>? _streamSubscription;
  ChannelLatestMessage? _lastMessage;
  int _unseenMessageCount = 0;
  AsyncState _state = AsyncState.loading;

  ChannelLatestMessage? get lastMessage => _lastMessage;
  AsyncState get state => _state;
  int get unseenMessageCount => _unseenMessageCount;

  InboxChatTileModel({
    required BuildContext context,
    required this.channelId,
    required this.channelName,
    this.channelAvatarUrl,
    required this.authenticatedUserId,
  })  : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _channelsProvider = Provider.of<ChannelsProvider>(
          context,
          listen: false,
        );

  Future<void> refresh() async {
    _state = AsyncState.loading;
    final latestMessageResult =
        await _channelsProvider.findChannelLatestMessage(channelId: channelId);
    // TODO - Make this query more efficient by fetching unseen messages directly
    // TODO final unseenMessagesResult = await _messagesProvider.unseenMessages();
    final unseenMessagesResult =
        await _messagesProvider.findChannelMessagesWithOptions(
      fetchFromNetworkOnly: true,
      input: Input$ChannelMessageListFilter(channelId: channelId),
      options: Input$FindObjectsOptions(
        includeDeleted: false,
      ),
    );
    if (latestMessageResult.gqlQueryResult.hasException ||
        unseenMessagesResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _state = AsyncState.ready;
      _lastMessage = latestMessageResult.response;
      // TODO _unseenMessageCount = unseenMessagesResult.response
      // TODO        ?.where((element) => element.channelId == channelId)
      // TODO        .length ??
      // TODO    0;
      _unseenMessageCount =
          _getUnseenMessageCount(unseenMessagesResult.response ?? []);
    }
    notifyListeners();
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = _messagesProvider.subscribeToChannel(
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
