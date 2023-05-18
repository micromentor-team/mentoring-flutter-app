import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mocktail/mocktail.dart';

import '../user/user.dart';
import 'channel.dart';

class MockChannelProviders extends Mock implements ChannelsProvider {
  List<Channel> channels = [];

  List<Channel> get channelsList {
    return channels;
  }

  @override
  Widget queryUserChannels(
      {required userId, required onData, onLoading, onError}) {
    return onData(jsonDecode(
      """[{"__typename": "Channel", "id": "642bec90b1235682c898803b", "name": "ujjwal kumar,raghav yadav", "userIds": ["640abd97587f51d992676942", "640ad02455942518a6cdca3e"], "createdBy": "640abd97587f51d992676942", "createdAt": "2023-04-04T09:23:28.471Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640ad02455942518a6cdca3e", "fullName": "ujjwal saini", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "ujjwal"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992676942", "fullName": "raghav yadav", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "raghav"}}]}, {"__typename": "Channel", "id": "642cfebec389d9350b84aeb0", "name": "kunal kumar,raghav yadav", "userIds": ["640abd97587f51d992676942", "640acfd255942518a6cdca3b"], "createdBy": "640abd97587f51d992676942", "createdAt": "2023-04-05T04:53:18.513Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640acfd255942518a6cdca3b", "fullName": "kunal kumar", "avatarUrl": "https://randomuser.me/api/portraits/med/men/75.jpg", "userHandle": "kunal0"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992676942", "fullName": "raghav yadav", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "raghav"}}]}]"""
    ));
  }

  @override
  Widget findChannelByChannelId(
      {required channelId, required onData, onLoading, onError}) {
    return onData([
      Channel(
          id: '2',
          createdAt: DateTime.now().toString(),
          userIds: ['2', '3'],
          createdBy: '1',
          participants: [
            User(
                id: '2',
                fullName: 'Aman',
                avatarUrl:
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                userHandle: 'userHandle',
                email: 'user1@email.com',
                adminNotes: ''),
            User(
                id: '3',
                fullName: 'Ram',
                avatarUrl:
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                userHandle: 'userHandle',
                email: 'user1@email.com',
                adminNotes: ''),
          ])
    ]);
  }

  @override
  Future<String> createChannel({required createdBy, required userIds}) async {
    return '3';
  }
}
