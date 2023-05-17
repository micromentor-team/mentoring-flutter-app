import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/message/message.dart';
import 'package:mocktail/mocktail.dart';

import '../user/user.dart';
import 'channel.dart';

class MockChannelProviders extends Mock implements ChannelsProvider {
  List<Channel> _channels = [];

  List<Channel> get channels {
    return _channels;
  }

  @override
  Future<void> getChannels({required userId}) async {
    _channels.add(Channel(
        id: '1',
        createdAt: DateTime.now().toString(),
        userIds: ['1', '2'],
        createdBy: '1',
        messages: [
          Message(
              id: '1',
              createdBy: '1',
              channelId: '1',
              messageText: 'hi',
              createdAt: DateTime.now(),
              isLocal: true),
          Message(
              id: '2',
              createdBy: '2',
              channelId: '1',
              messageText: 'hello',
              createdAt: DateTime.now(),
              isLocal: false),
          Message(
              id: '3',
              createdBy: '1',
              channelId: '1',
              messageText: 'Sounds Good',
              createdAt: DateTime.now(),
              isLocal: true),
        ],
        participants: [
          User(
              id: '1',
              fullName: 'Raghav Yadav',
              avatarUrl:
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
              userHandle: 'userHandle',
              email: 'user1@email.com',
              adminNotes: ''),
          User(
              id: '2',
              fullName: 'Ram Yadav',
              avatarUrl:
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
              userHandle: 'userHandle',
              email: 'user1@email.com',
              adminNotes: ''),
        ]));


  }
}
