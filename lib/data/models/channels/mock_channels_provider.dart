import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mocktail/mocktail.dart';

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
      """[{"__typename": "Channel", "id": "642bec90b1235682c898803b", "name": "ujjwal kumar,raghav yadav", "userIds": ["640abd97587f51d992676942", "640ad02455942518a6cdca3e"], "createdBy": "640abd97587f51d992676942", "createdAt": "2023-04-04T09:23:28.471Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640ad02455942518a6cdca3e", "fullName": "ujjwal saini", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "ujjwal"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992676942", "fullName": "raghav yadav", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "raghav"}}]}]"""
    ));
  }

  @override
  Widget findChannelByChannelId(
      {required channelId, required onData, onLoading, onError}) {
    return onData(jsonDecode("""{"__typename": "Channel", "id": "642bec90b1235682c898803b", "name": "ujjwal kumar,raghav yadav", "userIds": ["640abd97587f51d992676942", "640ad02455942518a6cdca3e"], "createdBy": "640abd97587f51d992676942", "createdAt": "2023-04-04T09:23:28.471Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640ad02455942518a6cdca3e", "fullName": "ujjwal saini", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "ujjwal"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992676942", "fullName": "raghav yadav", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "raghav"}}]}"""));
  }

  @override
  Future<String> createChannel({required createdBy, required userIds}) async {
    return '3';
  }
}
