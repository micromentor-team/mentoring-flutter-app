import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_session_tile.dart';

class UpcomingSection extends StatelessWidget {
  static const maxDaysDisplayed = 7;
  const UpcomingSection({Key? key}) : super(key: key);

  List<UpcomingSessionTile> _createUpcomingSessionTiles() {
    List<UpcomingSessionTile> sessionTiles = [];
    List<_UpcomingSession> sessions = _getUpcomingSessions();
    if (sessions.isEmpty) {
      return sessionTiles;
    }
    // Only show sessions within the given number calendar days.
    for (int i = 0; i < sessions.length; i++) {
      if (sessions[i].dateTime.isBefore(
          DateTime.now().add(const Duration(days: maxDaysDisplayed)))) {
        sessionTiles.add(
          UpcomingSessionTile(
            dateTime: sessions[i].dateTime,
            mentorName: sessions[i].mentorName,
          ),
        );
      }
    }
    return sessionTiles;
  }

  List<_UpcomingSession> _getUpcomingSessions() {
    List<_UpcomingSession> upcomingSessions = [];
    //TODO(m-rosario): Fetch sessions from backend instead of using mock data.
    upcomingSessions.addAll([
      _UpcomingSession(
        mentorName: 'Marina Larissa',
        dateTime: DateTime.now().copyWith(hour: 8, minute: 0, second: 0),
      ),
      _UpcomingSession(
        mentorName: 'Hodan Clemens',
        dateTime: DateTime.now()
            .copyWith(hour: 13, minute: 30, second: 0)
            .add(const Duration(days: 1)),
      ),
      _UpcomingSession(
        mentorName: 'Julius Helier',
        dateTime: DateTime.now()
            .copyWith(hour: 8, minute: 0, second: 0)
            .add(const Duration(days: 2)),
      ),
      _UpcomingSession(
        mentorName: 'Rosanne Alesha',
        dateTime: DateTime.now()
            .copyWith(hour: 16, minute: 0, second: 0)
            .add(const Duration(days: 3)),
      ),
      _UpcomingSession(
        mentorName: 'Junaid Maqsood',
        dateTime: DateTime.now()
            .copyWith(hour: 15, minute: 45, second: 0)
            .add(const Duration(days: 4)),
      ),
    ]);
    return upcomingSessions;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> upcomingSessionTiles = _createUpcomingSessionTiles();
    return SectionTile(
      title: 'You have ${upcomingSessionTiles.length} upcoming sessions',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Insets.widgetSmallInset),
          child: Row(
            children: upcomingSessionTiles,
          ),
        ),
      ),
    );
  }
}

class _UpcomingSession {
  final String mentorName;
  final DateTime dateTime;

  const _UpcomingSession({
    required this.mentorName,
    required this.dateTime,
  });
}
