import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_session_tile.dart';

class UpcomingSection extends StatefulWidget {
  static const  maxSessionsDisplayed = 3;
  const UpcomingSection({Key? key}) : super(key: key);

  @override
  State<UpcomingSection> createState() => _UpcomingSectionState();
}

class _UpcomingSectionState extends State<UpcomingSection> {

  List<UpcomingSessionTile> _createUpcomingSessionTiles() {
    List<UpcomingSessionTile> sessionTiles = [];
    List<_UpcomingSession> sessions = _getUpcomingSessions();
    if(sessions.isEmpty) {
      return sessionTiles;
    }

    for(int i = 0; i < sessions.length; i++) {
      if(i == UpcomingSection.maxSessionsDisplayed){
        break;
      }
      sessionTiles.add(
        UpcomingSessionTile(
            dateTime: sessions[i].dateTime,
            mentorAvatarUrl: sessions[i].mentorAvatarUrl,
            mentorName: sessions[i].mentorName,
            sessionName: sessions[i].sessionName,
        ),
      );
    }
    return sessionTiles;
  }

  List<_UpcomingSession> _getUpcomingSessions() {
    List<_UpcomingSession> upcomingSessions = [];
    // TODO(m-rosario): Fetch sessions from backend instead of using mock data.
    for(int i = 1; i <= 10; i++){
      upcomingSessions.add(
          _UpcomingSession(
            mentorAvatarUrl: null,
            mentorName: 'Mentor $i',
            dateTime: DateTime.now().add(Duration(days: i, hours: i*7, minutes: i*13)),
            sessionName: 'Introduction',
          ),
      );
    }

    //
    return upcomingSessions;
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
      title: 'Upcoming sessions',
      child: Column(
        children: _createUpcomingSessionTiles(),
      ),
    );
  }
}

class _UpcomingSession {
  final String? mentorAvatarUrl;
  final String mentorName;
  final DateTime dateTime;
  final String sessionName;

  const _UpcomingSession({
    this.mentorAvatarUrl,
    required this.mentorName,
    required this.dateTime,
    required this.sessionName,
  });
}
