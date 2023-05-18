import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'message.dart';
import 'messages_provider.dart';
class MessagesMockProvider extends Mock implements MessagesProvider {
  @override
  Widget queryMessages(
      {required channelId, required onData, onLoading, onError}){
    return onData(
        [Message(id: '1', createdBy: '2', channelId: '1', messageText: 'messageText', createdAt: DateTime.now().subtract(const Duration(days: 1)).toString(), statuses: ['seen']),
          Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hi', createdAt: DateTime.now().toString(),statuses: ['seen']),
          Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hello', createdAt: DateTime.now().toString(), statuses: ['seen']),
          Message(id: '1', createdBy: '2', channelId: '1', messageText: 'how are you?', createdAt: DateTime.now().toString(),statuses: [])]
    );
  }

  @override
  Widget unseenMessages({required onData, onLoading, onError}){
    return onData(
        [Message(id: '1', createdBy: '2', channelId: '1', messageText: 'how are you?', createdAt: DateTime.now().toString())]
    );
  }

  @override
  Future<Message> createMessage(
      {required channelId, required messageText, replyToMessageId}) async {
    return Message(id: '5', createdBy: '2', channelId: '1', messageText: 'create message', createdAt: DateTime.now().toString());
  }

  // Unseen Messages

  @override
  Future<void> markMessageRead(channelId) async {

  }
  @override
  Future<void> updateMessage({
    required channelId,
    required messageId,
    required messageText,
    bool? deleted,
  })async{

  }
  @override
  Future<void> deleteMessage({required messageId, deletePhysically})async {

  }
  @override
  Future<void> subscribeToChannel({required channelId}) async {

  }
}