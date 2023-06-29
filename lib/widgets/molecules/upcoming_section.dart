import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/image_tile.dart';

class UpcomingSection extends StatelessWidget {
  static const maxDaysDisplayed = 365;
  const UpcomingSection({Key? key}) : super(key: key);

  List<ImageTile> _createUpcomingSessionTiles() {
    List<ImageTile> sessionTiles = [];
    List<_UpcomingSession> sessions = _getUpcomingSessions();
    if (sessions.isEmpty) {
      return sessionTiles;
    }
    DateFormat dateFormat = DateFormat('MMMM d\ny\n').add_jm();
    // Only show sessions within the given number calendar days.
    for (int i = 0; i < sessions.length; i++) {
      if (sessions[i].dateTime.isBefore(
          DateTime.now().add(const Duration(days: maxDaysDisplayed)))) {
        sessionTiles.add(
          ImageTile(
            imageUrl: sessions[i].avatarUrl,
            subtitle: dateFormat.format(sessions[i].dateTime),
            title: sessions[i].mentorName,
            isCircle: true,
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
        mentorName: 'Thu Tran',
        dateTime: DateTime.now().copyWith(hour: 8, minute: 0, second: 0),
        avatarUrl:
            "https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      _UpcomingSession(
        mentorName: 'Nick Ramires',
        dateTime: DateTime.now()
            .copyWith(hour: 13, minute: 30, second: 0)
            .add(const Duration(days: 1)),
        avatarUrl:
            "https://images.pexels.com/photos/6000065/pexels-photo-6000065.jpeg",
      ),
      _UpcomingSession(
        mentorName: 'Anwar Masry',
        dateTime: DateTime.now()
            .copyWith(hour: 13, minute: 30, second: 0)
            .add(const Duration(days: 100)),
        avatarUrl:
            "https://images.pexels.com/photos/3400560/pexels-photo-3400560.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
    ]);
    return upcomingSessions;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Widget> upcomingSessionTiles = _createUpcomingSessionTiles();
    return SectionTile(
      title: l10n.homeUpcomingSectionTitle,
      addTopDivider: true,
      seeAllOnPressed: () {
        context.go('/progress');
      },
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
  final String avatarUrl;

  const _UpcomingSession({
    required this.mentorName,
    required this.dateTime,
    required this.avatarUrl,
  });
}
