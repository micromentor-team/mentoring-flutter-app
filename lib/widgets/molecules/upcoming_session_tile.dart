import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mm_flutter_app/widgets/atoms/rectangle_button.dart';

class UpcomingSessionTile extends StatelessWidget {
  static const Duration joinMinimumTime = Duration(minutes: 5);
  final DateTime dateTime;
  final String mentorName;

  const UpcomingSessionTile({
    Key? key,
    required this.dateTime,
    required this.mentorName,
  }) : super(key: key);

  List<Widget> _createSessionButtons() {
    List<Widget> buttons = [];
    // Add JOIN button only if session is coming up soon.
    if(DateTime.now().isAfter(dateTime.subtract(joinMinimumTime))){
      buttons.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
            child: RectangleButton(
              onPressed: () => {},
              text: "JOIN",
              fontSize: 12.0,
              padding: const EdgeInsets.all(8.0),
            ),
          )
      );
    }
    buttons.add(
        RectangleButton(
          onPressed: () => {},
          text: "RESCHEDULE",
          fontSize: 12.0,
          padding: const EdgeInsets.all(8.0),
        )
    );
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    // TODO(m-rosario): Support different date formats according to locale.
    DateFormat dateFormat = DateFormat('MMMM d, ').add_jm();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 184,
            height: 96,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mentorName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  dateFormat.format(dateTime),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(width: 0, height: 8.0,),
                Row(
                  children: _createSessionButtons(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
