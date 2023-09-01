import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../utilities/errors/crash_handler.dart';

class InboxChatTileModel extends ChangeNotifier {
  final String channelId;
  final String channelName;
  final String? channelAvatarUrl;
  final String authenticatedUserId;
  final bool isArchivedChannel;
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
    required this.isArchivedChannel,
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
        await _messagesProvider.findChannelLatestMessage(channelId: channelId);
    final OperationResult<List> unseenMessagesResult;
    if (isArchivedChannel) {
      unseenMessagesResult = await _messagesProvider.unseenArchivedMessages();
    } else {
      unseenMessagesResult = await _messagesProvider.unseenMessages();
    }
    if (latestMessageResult.gqlQueryResult.hasException ||
        unseenMessagesResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      _state = AsyncState.ready;
      _lastMessage = latestMessageResult.response;
      _unseenMessageCount = unseenMessagesResult.response
              ?.where((element) => element.channelId == channelId)
              .length ??
          0;
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> _latestMessageRefresh() async {
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
    _lastMessage = latestMessageResult.response;
    if (_lastMessage?.createdBy != authenticatedUserId) {
      _unseenMessageCount++;
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = _channelsProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: (event) {
        switch (event.eventType) {
          case Enum$ChannelChangedEventType.messageCreated:
            if (event.channelId == channelId) {
              _latestMessageRefresh();
            }
            return;
          default:
            return;
        }
      },
    );
  }

  void cancelChannelSubscription() {
    _streamSubscription?.cancel();
    _streamSubscription = null;
  }
}
