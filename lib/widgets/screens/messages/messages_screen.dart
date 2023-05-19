import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channel.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user/user_provider.dart';
import 'messages_list.dart';

class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: const Text('Messages',
            style: TextStyle(color: Colors.deepPurpleAccent)),
      ),
      body: const SafeArea(
        child: ChannelsList(),
      ),
    );
  }
}

class ChannelsList extends StatelessWidget {
  const ChannelsList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final channelsProvider = Provider.of<ChannelsProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return channelsProvider.queryUserChannels(
      userId: user?.id,
      onData: (data) {
        List channels =
            data.reversed.map((item) => Channel.fromJson(item)).toList();
        return MessagesList(user: user!, channels: channels);
      },
    );
  }
}
