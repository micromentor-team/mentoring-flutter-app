import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

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
      child: SizedBox(
        width: Dimensions.recommendedMentorTileWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(0, 0, 0, Insets.widgetSmallInset),
              child: CircleAvatar(
                radius: Radii.avatarRadiusMedium,
                backgroundImage: NetworkImage(avatarUrl.toString()),
              ),
            ),
            Text(
              mentorName,
              style: TextStyles.mentorCardTitle(context),
            ),
            Text(
              mentorLocation,
              style: TextStyles.mentorCardSubtitle(context),
            ),
          ],
        ),
      ),
    );
  }
}
