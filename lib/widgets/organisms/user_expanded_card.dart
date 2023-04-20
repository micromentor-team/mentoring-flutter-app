import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mm_flutter_app/widgets/organisms/user_card.dart';
import 'package:provider/provider.dart';
import '../../../data/models/channels/channels_provider.dart';
import '../../data/models/user/user_provider.dart';
import '../screens/home/dialog_and_rating.dart';
import '../screens/message/conversationScreen.dart';

Widget userExpandedCard({required context, required users, required index}) {
  final userProvider = Provider.of<UserProvider>(context);
  final localUser = userProvider.user;
  final channelProvider = Provider.of<ChannelsProvider>(context);
  _openChatScreen(user, channelId) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ConversationScreen(
              userId: localUser!.id.toString(),
              title: user.fullName.toString(),
              image: user.avatarUrl.toString(),
              channelId: channelId.toString(),
            )));
  }

  return Container(
    decoration: BoxDecoration(border: Border.all()),
    child: Column(
      children: [
        userCard(users, index),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, bottom: 10.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await channelProvider.createChannel(
                           createdBy: localUser?.id,
                            userIds: [
                              localUser?.id.toString(),
                              users[index].id.toString()
                            ]).then((value) => _openChatScreen(
                            users[index], value));
                        },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.message,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Message')
                        ],
                      ))
                ],
              ),
              const Divider(thickness: 2),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'I have over 25 year of experience in B2B marketing and sales. I love to work with small business owners and freelancers who are just starting out on their entrepreneurial path.',
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Skills',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              const Text('Contracting',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              rating(3),
              const SizedBox(
                height: 5,
              ),
              const Text('Prospecting',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              rating(4),
              const SizedBox(
                height: 5,
              ),
              const Text('Google Analytics',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              rating(5),
            ],
          ),
        ),
      ],
    ),
  );
}
