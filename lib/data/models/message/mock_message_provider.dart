import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import '../unseen_messages/unseen_messages.dart';
import 'message.dart';
import 'messages_provider.dart';
class MessagesMockProvider extends Mock implements MessagesProvider {
  List<Message> _chatMessages = [];
  final List<String> _notSeenMessages = [];

  // this determines sender that message is seen or not
  List<String> get notSeenMessages {
    return _notSeenMessages;
  }

  // get all messages of a channel
  List<Message> get messages {
    return _chatMessages;
  }

  Future<void> getMessages({required channelId, required userId}) async {
    _chatMessages = [Message(id: '1', createdBy: '2', channelId: '1', messageText: 'messageText', createdAt: DateTime.now().subtract(Duration(days: 1)), isLocal: false,statuses: ['seen']),
      Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hi', createdAt: DateTime.now(), isLocal: true,statuses: ['seen']),
      Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hello', createdAt: DateTime.now(), isLocal: false,statuses: ['seen']),
      Message(id: '1', createdBy: '2', channelId: '1', messageText: 'how are you?', createdAt: DateTime.now(), isLocal: true,statuses: [])];
  }
  void createMessage(
      {required channelId, required messageText, replyToMessageId}) async {

  }

  // Unseen Messages
  List<UnseenMessages> get unseenMessages {
    return [..._unseenMessagesList];
  }

  List<UnseenMessages> _unseenMessagesList = [];
  Future<void> inbox() async {
    _unseenMessagesList = [];

  }

  // Mark Messages as seen by the receiver in a channel
  Future<void> markMessageRead(channelId) async {

  }
  Future<void> updateMessage({required messageId,required messageText})async{

  }
  Future<void> deleteMessage({required messageId})async {

  }
  Future<void> subscribeToChannel({required channelId, required onChannelUpdated}) async {

  }
}