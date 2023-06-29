import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/image_tile.dart';

class UpcomingSessionTile extends StatelessWidget {
  static const Duration joinMinimumTime = Duration(minutes: 5);
  final String avatarUrl;
  final DateTime dateTime;
  final String mentorName;

  const UpcomingSessionTile({
    Key? key,
    required this.avatarUrl,
    required this.dateTime,
    required this.mentorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO(m-rosario): Support different date formats according to locale.
    DateFormat dateFormat = DateFormat('MMMM d\ny\n').add_jm();
    return ImageTile(
      imageUrl: avatarUrl,
      title: mentorName,
      subtitle: dateFormat.format(dateTime),
      isCircle: true,
    );
  }
}
