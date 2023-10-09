import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/models/inbox_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:provider/provider.dart';

import '../messages_provider.dart';

class ChatModel extends ChangeNotifier {
  final String channelId;
  final AuthenticatedUser authenticatedUser;
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;
  final InboxModel _inboxModel;
  VoidCallback? onNewMessage;
  final List<ChannelMessage> _channelMessages = List.empty(growable: true);
  StreamSubscription<QueryResult<Object?>>? _streamSubscription;
  AsyncState _fetchOldMessagesState = AsyncState.ready;
  AsyncState _hasAnyMessagesState = AsyncState.loading;

  List<ChannelMessage> get channelMessages => _channelMessages;
  AsyncState get fetchOldMessagesState => _fetchOldMessagesState;
  AsyncState get hasAnyMessagesState => _hasAnyMessagesState;

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
        ),
        _inboxModel = Provider.of<InboxModel>(
          context,
          listen: false,
        );

  Future<void> addOldChannelMessages() async {
    _fetchOldMessagesState = AsyncState.loading;
    final result = await _messagesProvider.findChannelMessages(
      fetchFromNetworkOnly: true,
      fetchSkip: _channelMessages.length,
      input: Input$ChannelMessageListFilter(channelId: channelId),
    );
    if (result.gqlQueryResult.hasException) {
      _fetchOldMessagesState = AsyncState.error;
    } else {
      final fetchedMessages = result.response ?? [];

      _channelMessages.addAll(fetchedMessages);
      _channelMessages.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      _fetchOldMessagesState = AsyncState.ready;
      _hasAnyMessagesState = AsyncState.ready;
    }
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void> addNewChannelMessage({
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
    if (hasListeners) {
      notifyListeners();
    }
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
    _inboxModel.refreshUnseenMessages();
  }

  Future<void> _refreshSingleChannelMessage({
    required String channelMessageId,
    required bool isNewMessage,
  }) async {
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
        if (event.messageId == null) {
          return;
        }
        switch (event.eventType) {
          case Enum$ChannelChangedEventType.messageCreated:
            if (onNewMessage != null) {
              onNewMessage!();
            }
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
