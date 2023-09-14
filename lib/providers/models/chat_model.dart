import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:provider/provider.dart';

import '../messages_provider.dart';

class ChatModel extends ChangeNotifier {
  final String channelId;
  final AuthenticatedUser authenticatedUser;
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;
  List<ChannelMessage> _channelMessages = [];
  StreamSubscription<QueryResult<Object?>>? _streamSubscription;
  AsyncState _state = AsyncState.ready;

  List<ChannelMessage> get channelMessages => _channelMessages;
  AsyncState get state => _state;

  ChatModel({
    required BuildContext context,
    required this.channelId,
    required this.authenticatedUser,
  })  : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _channelsProvider = Provider.of<ChannelsProvider>(
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
      _channelMessages = result.response ?? [];
      _state = AsyncState.ready;
    }
    notifyListeners();
  }

  Future<void> addChannelMessage({
    required String channelId,
    required String messageText,
    required replyToMessageId,
  }) async {
    final result = await _messagesProvider.createMessage(
      input: Input$ChannelMessageInput(
        channelId: channelId,
        messageText: messageText,
        replyToMessageId: replyToMessageId,
      ),
    );
    if (result.gqlQueryResult.hasException) {
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not create channel message: $e');
      return;
    }
    // Responses for CreatedMessage and ChannelMessage have the same fields,
    // so it is possible to convert one to the other through JSON.
    _channelMessages.add(ChannelMessage.fromJson(result.response!.toJson()));
    notifyListeners();
  }

  Future<void> markMessagesAsRead() async {
    final result = await _messagesProvider.markMessageRead(
      channelId: channelId,
    );
    if (result.gqlQueryResult.hasException) {
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not mark messages as read: $e');
      return;
    }
  }

  Future<void> _refreshSingleChannelMessage({
    required String channelMessageId,
    required bool isNewMessage,
  }) async {
    // TODO: Possible race condition here if the query executes before the mutation completes, consider polling result
    final result = await _messagesProvider.findChannelMessageById(
      channelMessageId: channelMessageId,
    );
    if (result.gqlQueryResult.hasException || result.response == null) {
      final String e = result.gqlQueryResult.exception.toString();
      CrashHandler.logCrashReport('Could not retrieve channel message: $e');
      return;
    }
    if (isNewMessage) {
      if (result.response!.createdBy == authenticatedUser.id) {
        // This message was created by this user, so it must be in the process
        // of being added asynchronously in addChannelMessage. This check is
        // needed to avoid duplicate messages caused by the race condition.
        return;
      }
      // Add new message from another user.
      // Responses for ChannelMessageById and ChannelMessage have the same
      // fields, so it is possible to convert one to the other through JSON.
      _channelMessages.add(ChannelMessage.fromJson(result.response!.toJson()));
    } else {
      final int messageIndex = _channelMessages.indexWhere(
        (element) => element.id == channelMessageId,
      );
      if (messageIndex != -1) {
        _channelMessages[messageIndex] = ChannelMessage.fromJson(
          result.response!.toJson(),
        );
      }
    }
    notifyListeners();
  }

  void createChannelSubscription() {
    if (_streamSubscription != null) {
      return;
    }
    _streamSubscription = _channelsProvider.subscribeToChannel(
      channelId: channelId,
      onSubscriptionEvent: (event) {
        if (event.messageId == null) {
          return;
        }
        switch (event.eventType) {
          case Enum$ChannelChangedEventType.messageCreated:
            if (_channelMessages.any(
              (element) => element.id == event.messageId!,
            )) {
              // Already added to list of messages.
              return;
            }
            _refreshSingleChannelMessage(
              channelMessageId: event.messageId!,
              isNewMessage: true,
            );
            return;
          case Enum$ChannelChangedEventType.messageUpdated:
          case Enum$ChannelChangedEventType.messageDeleted:
            _refreshSingleChannelMessage(
              channelMessageId: event.messageId!,
              isNewMessage: false,
            );
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
