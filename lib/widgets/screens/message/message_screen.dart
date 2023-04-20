import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_screen.dart';
import 'package:mm_flutter_app/widgets/screens/message/conversationScreen.dart';
import 'package:provider/provider.dart';
import '../../../data/models/channels/channel.dart';
import '../../../data/models/channels/channels_provider.dart';
import '../../../data/models/message/messages_provider.dart';
import '../../../data/models/unseen_messages/unseen_messages.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Channel> channels = [];
  Iterable<UnseenMessages> unseenMessages = [];

  _getAllChannels(channelProvider, userId) async {
    await channelProvider.getChannels(userId: userId);
    channels = channelProvider.channels;
    channelProvider.notifyListeners();
    return channels;
  }

  _getUnseenMessages(messageProvider, userId) async {
    await messageProvider.inbox();
    unseenMessages = messageProvider.unseenMessages
        .where((element) => element.createdBy != userId);
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;
    final channelProvider =
        Provider.of<ChannelsProvider>(context, listen: false);
    final messageProvider =
        Provider.of<MessagesProvider>(context, listen: false);
    _getUnseenMessages(messageProvider, user!.id);

    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: const Icon(Icons.refresh)),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => InboxScreen(
                        unseenMessages: unseenMessages.toList(),
                      )));
            },
            child: Badge(
                label: Text('${unseenMessages.length}'),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.deepPurpleAccent,
                )),
          ),
          const SizedBox(
            width: 15,
          )
        ],
        elevation: 0.5,
        title: const Text('Messages',
            style: TextStyle(color: Colors.deepPurpleAccent)),
      ),
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: FutureBuilder(
            future: _getAllChannels(channelProvider, user.id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // _getChannelName(context, channels);
                return ListView.builder(
                    itemCount: channels.length,
                    itemBuilder: (BuildContext context, int index) {
                      String? _channelName = channels[index]
                          .participants
                          ?.where((element) => element.id != user.id)
                          .first
                          .fullName;
                      String? channelName = _channelName![0].toUpperCase() +
                          _channelName.substring(1);
                      String? avatarUrl = channels[index]
                          .participants
                          ?.where((element) => element.id != user.id)
                          .first
                          .avatarUrl;
                      final item = channels[index].id;
                      Iterable<UnseenMessages> unseenMess =
                          messageProvider.unseenMessages.where((element) =>
                              element.channelId == channels[index].id &&
                              element.createdBy != user.id);
                      return Dismissible(
                        background: Container(
                          color: Colors.red,
                        ),
                        onDismissed: (direction) async {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(channelName)));
                          await channelProvider.deleteChannel(
                              channel: channels[index]);
                          setState(() {});
                        },
                        key: Key(item),
                        child: ListTile(
                          dense: true,
                          leading: CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: avatarUrl!.isNotEmpty
                                    ? Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(avatarUrl))
                                    : const Icon(Icons.account_circle),
                              )),
                          title: Text(channelName,
                              style: const TextStyle(fontSize: 18)),
                          subtitle: channels[index].messages.isNotEmpty
                              ? Text(
                                  channels[index].messages.last['messageText'],
                                  style: const TextStyle(color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                                )
                              : const SizedBox(),
                          trailing: unseenMess.isNotEmpty
                              ? Badge(
                                  label: Center(
                                      child:
                                          Text(unseenMess.length.toString())),
                                  backgroundColor: Colors.green,
                                  alignment: AlignmentDirectional.center,
                                )
                              : const SizedBox(),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ConversationScreen(
                                      userId: user.id.toString(),
                                      title: channelName,
                                      image: avatarUrl,
                                      channelMessages: channels[index].messages,
                                      channelId: channels[index].id,
                                    )));
                          },
                        ),
                      );
                    });
              } else {
                return const Center(child:  CircularProgressIndicator());
              }
            }),
      )),
    );
  }
}
