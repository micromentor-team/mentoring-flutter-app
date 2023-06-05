import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mm_flutter_app/widgets/atoms/item_tile.dart';

class UpcomingSessionTile extends StatelessWidget {
  final DateTime dateTime;
  final String? mentorAvatarUrl;
  final String mentorName;
  final String sessionName;

  const UpcomingSessionTile({
    Key? key,
    required this.dateTime,
    this.mentorAvatarUrl,
    required this.mentorName,
    required this.sessionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO(m-rosario): Support different date formats according to locale.
    DateFormat dateFormat = DateFormat('MMMM d, ').add_jm();
    return ItemTile(
      title: dateFormat.format(dateTime),
      imageUrl: mentorAvatarUrl,
      content: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mentorName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                sessionName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.grey),
              ),
          ],
        )
      ),
    );
  }
}
