import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:provider/provider.dart';
import '../../../data/models/unseen_messages/unseen_messages.dart';
import '../../../data/models/user/user_provider.dart';
import '../message/conversationScreen.dart';

class InboxScreen extends StatefulWidget {
  final List<UnseenMessages> unseenMessages;

  const InboxScreen({Key? key, required this.unseenMessages}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final channelProvider = Provider.of<ChannelsProvider>(context);
    final user = userProvider.user;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: const Text('Inbox',style:TextStyle(color: Colors.deepPurpleAccent)),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  widget.unseenMessages.length  != 0?ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.unseenMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    title: Text(widget.unseenMessages[index].senderFullName),
                    subtitle: Text(widget.unseenMessages[index].messageText),
                    onTap: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ConversationScreen(
                                userId: user!.id.toString(),
                                title:
                                    widget.unseenMessages[index].senderFullName,
                                image: '',
                                channelId:
                                    widget.unseenMessages[index].channelId,
                              )));
                      await channelProvider.addChannelMessageEvent(
                          channelId: widget.unseenMessages[index].channelId,
                          messageIds: [
                            widget.unseenMessages[index].messageId.toString()
                          ],
                          userId: user!.id);
                    },
                  ),
                );
              }):const Center(child: Text('Your inbox is empty..'),),
        )));
  }
}
