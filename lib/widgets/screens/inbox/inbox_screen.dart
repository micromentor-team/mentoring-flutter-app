// import 'package:flutter/material.dart';
// import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:mm_flutter_app/data/models/unseen_messages/unseen_messages.dart';
// import 'package:mm_flutter_app/data/models/user/user_provider.dart';
// import '../message/conversationScreen.dart';
//
// class InboxScreen extends StatelessWidget {
//   final List<UnseenMessages> unseenMessages;
//
//   const InboxScreen({Key? key, required this.unseenMessages}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final userProvider = Provider.of<UserProvider>(context);
//     final channelProvider = Provider.of<ChannelsProvider>(context);
//     final user = userProvider.user;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0.5,
//           title: const Text('Inbox',style:TextStyle(color: Colors.deepPurpleAccent)),
//         ),
//         body: SafeArea(
//             child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child:  unseenMessages.length  != 0?ListView.builder(
//               physics: const ScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: unseenMessages.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ListTile(
//                     leading: const Icon(
//                       Icons.account_circle,
//                       size: 50,
//                     ),
//                     title: Text(unseenMessages[index].senderFullName),
//                     subtitle: Text(unseenMessages[index].messageText),
//                     onTap: () async {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => ChannelMessagesScreen(
//                                 userId: user!.id.toString(),
//                                 title:
//                                     unseenMessages[index].senderFullName,
//                                 image: '',
//                                 channelId:
//                                     unseenMessages[index].channelId,
//                               )));
//                       await channelProvider.addChannelMessageEvent(
//                           channelId: unseenMessages[index].channelId,
//                           messageIds: [
//                             unseenMessages[index].messageId.toString()
//                           ],
//                           userId: user!.id);
//                     },
//                   ),
//                 );
//               }):const Center(child: Text('Your inbox is empty..'),),
//         )));
//   }
// }
