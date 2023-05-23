import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';

import 'message.dart';
import 'messages_provider.dart';

class MessagesMockProvider extends Mock implements MessagesProvider {
  @override
  Widget queryMessages(
      {required channelId, required onData, onLoading, onError}) {
    return onData(jsonDecode(
        """[{"__typename": "ChannelMessage", "id": "6458ccc44d79d5dc660634f1", "createdBy": "640ad02455942518a6cdca3e", "channelId": "642bec90b1235682c898803b", "messageText": "Flutter is an open-source UI software development kit created by Google. It is used to develop cross-platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017.", "createdAt": "2023-05-08T10:19:48.228Z", "replyToMessageId": null, "deletedBy": null, "updatedAt": "2023-05-08T10:54:27.363Z", "deletedAt": null, "editedAt": null, "statuses": [{"__typename": "ChannelMessageStatus", "seenAt": "2023-05-08T10:54:27.363Z"}]}, {"__typename": "ChannelMessage", "id": "6458ccdd4d79d5dc660634f2", "createdBy": "640abd97587f51d992676942", "channelId": "642bec90b1235682c898803b", "messageText": "he he", "createdAt": "2023-05-08T10:20:13.079Z", "replyToMessageId": null, "deletedBy": null, "updatedAt": "2023-05-08T10:54:34.674Z", "deletedAt": null, "editedAt": null, "statuses": [{"__typename": "ChannelMessageStatus", "seenAt": "2023-05-08T10:54:34.674Z"}]}, {"__typename": "ChannelMessage", "id": "6458d4c94d79d5dc660634f4", "createdBy": "640abd97587f51d992676942", "channelId": "642bec90b1235682c898803b", "messageText": "hello ujjwal", "createdAt": "2023-05-08T10:54:01.149Z", "replyToMessageId": null, "deletedBy": null, "updatedAt": "2023-05-08T10:54:34.674Z", "deletedAt": null, "editedAt": null, "statuses": [{"__typename": "ChannelMessageStatus", "seenAt": "2023-05-08T10:54:34.674Z"}]}, {"__typename": "ChannelMessage", "id": "6458d4d64d79d5dc660634f5", "createdBy": "640ad02455942518a6cdca3e", "channelId": "642bec90b1235682c898803b", "messageText": "hi raghav", "createdAt": "2023-05-08T10:54:14.661Z", "replyToMessageId": null, "deletedBy": null, "updatedAt": "2023-05-08T10:54:27.363Z", "deletedAt": null, "editedAt": null, "statuses": [{"__typename": "ChannelMessageStatus", "seenAt": "2023-05-08T10:54:27.363Z"}]},{"__typename": "ChannelMessage", "id": "6465f57e6da0939e4c6c7407", "createdBy": "640abd97587f51d992676942", "channelId": "642bec90b1235682c898803b", "messageText": "ok", "createdAt": "2023-05-18T09:53:02.554Z", "replyToMessageId": "6458d4d64d79d5dc660634f5", "deletedBy": null, "updatedAt": null, "deletedAt": null, "editedAt": null, "statuses": null}]"""));
  }

  @override
  Widget unseenMessages({required onData, onLoading, onError}) {
    return onData(jsonDecode(
        """[{"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "645890f3aaa5d319a9edb38f", "messageText": "hi", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458a229bd7e85995a3a9bf3", "messageText": "gfhj", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458c9434d79d5dc660634e8", "messageText": "bye", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458cacd4d79d5dc660634eb", "messageText": "best", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458cc4e4d79d5dc660634ed", "messageText": "hi", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458ccb34d79d5dc660634f0", "messageText": "nice", "senderFullName":" raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458ccdd4d79d5dc660634f2", "messageText": "he he", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458d4c94d79d5dc660634f4", "messageText": "hello ujjwal", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6458d4e14d79d5dc660634f6", "messageText": "how are u?", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6465f5576da0939e4c6c7405", "messageText": "hi", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}, {"__typename": "ChannelInboxItemMessage", "channelId": "642bec90b1235682c898803b", "id": "6465f5626da0939e4c6c7406", "messageText": "hello", "senderFullName": "raghav yadav", "createdBy": "640abd97587f51d992676942"}]"""));
  }

  @override
  Future<Message> createMessage(
      {required channelId, required messageText, replyToMessageId}) async {
    return Message(
        id: '5',
        createdBy: '2',
        channelId: '1',
        messageText: 'create message',
        createdAt: DateTime.now().toString());
  }

  // Unseen Messages

  @override
  Future<void> markMessageRead(channelId) async {}

  @override
  Future<void> updateMessage({
    required channelId,
    required messageId,
    String? messageText,
    bool? undelete,
  }) async {}

  @override
  Future<void> deleteMessage({required messageId, deletePhysically}) async {}

  @override
  Future<void> subscribeToChannel({required channelId}) async {}
}
