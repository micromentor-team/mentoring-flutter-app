import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_session_tile.dart';

class UpcomingSection extends StatefulWidget {
  static const  maxDaysDisplayed = 7;
  const UpcomingSection({Key? key}) : super(key: key);

  @override
  State<UpcomingSection> createState() => _UpcomingSectionState();
}

class _UpcomingSectionState extends State<UpcomingSection> {
  List<Widget> _upcomingSessionTiles = [];

  List<UpcomingSessionTile> _createUpcomingSessionTiles() {
    List<UpcomingSessionTile> sessionTiles = [];
    List<_UpcomingSession> sessions = _getUpcomingSessions();
    if(sessions.isEmpty) {
      return sessionTiles;
    }

    // Only show sessions within the given number calendar days.
    for(int i = 0; i < sessions.length; i++) {
      if(sessions[i].dateTime.isBefore(
          DateTime.now().add(
              const Duration(days:UpcomingSection.maxDaysDisplayed)))){
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
    for(int i = 0; i < 20; i++){
      upcomingSessions.add(
          _UpcomingSession(
            mentorName: 'Mentor ${i+1}',
            dateTime: DateTime.now().add(Duration(days: i, hours: i*7, minutes: i*13+4)),
          ),
      );
    }

    //
    return upcomingSessions;
  }

  @override
  Widget build(BuildContext context) {
    _upcomingSessionTiles = _createUpcomingSessionTiles();
    return SectionTile(
      title: 'You have ${_upcomingSessionTiles.length} upcoming sessions',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _upcomingSessionTiles,
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
