import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';

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
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 112,
          maxWidth: 112,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: Corners.avatarRadiusMedium,
              backgroundImage: NetworkImage(avatarUrl.toString()),
              backgroundColor: Palette.kEmptyElement,
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
