import 'package:flutter/material.dart';

import 'package:mm_flutter_app/themes/styles.dart';

class MentorTile extends StatelessWidget {
  final String avatarUrl;
  final String mentorName;
  final String mentorLocation;

  const MentorTile({
    Key? key,
    required this.avatarUrl,
    required this.mentorName,
    required this.mentorLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 112,
          maxWidth: 112,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(avatarUrl.toString()),
              backgroundColor: Colors.white60,
            ),
            Text(
              mentorName,
              style: Styles.mentorCardTitle,
            ),
            Text(
              mentorLocation,
              style: Styles.mentorCardSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
