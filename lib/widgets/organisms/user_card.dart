import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mm_flutter_app/widgets/screens/message/conversationScreen.dart';
import '../screens/home/dialog_and_rating.dart';

Widget userCard(users, index) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0, top: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: FadeInImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(users[index].avatarUrl),
                  placeholder: const NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')),
                )),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${users[index]!.fullName[0].toUpperCase() + users[index]!.fullName.substring(1)}',
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 5,
                ),
                const Text('Delhi, India')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text('Flutter | API integration | Python'),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 2.0, bottom: 2.0, left: 4.0, right: 4.0),
                child:
                    Text(' Marketing ', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 2.0, bottom: 2.0, left: 4.0, right: 4.0),
                child: Text(' Sales ', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 2.0, bottom: 2.0, left: 4.0, right: 4.0),
                child:
                    Text(' Technology ', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
