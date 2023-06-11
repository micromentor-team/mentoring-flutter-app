import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_header.dart';
import 'package:mm_flutter_app/widgets/atoms/user_search_bar.dart';
import 'package:mm_flutter_app/widgets/molecules/match_section.dart';
import 'package:mm_flutter_app/widgets/molecules/mentors_section.dart';
import 'package:mm_flutter_app/widgets/molecules/resources_section.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_section.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  String _getGreeting(User user) {
    int hour = DateTime.now().hour;
    String timeOfDayGreeting;
    if (hour >= 5 && hour < 12) {
      timeOfDayGreeting = 'Good\nmorning,';
    } else if (hour >= 12 && hour < 18) {
      timeOfDayGreeting = 'Good\nafternoon,';
    } else {
      timeOfDayGreeting = 'Good\nevening,';
    }
    return '$timeOfDayGreeting\n${user.fullName}';
  }

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context, listen: false).user!;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const Divider(thickness: 4.0, height: 4.0),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: UserSearchBar(
                    hintText: 'Search for a mentor',
                  ),
                ),
                ProfileHeader(
                  avatarUrl: user.avatarUrl,
                  profileMessage: _getGreeting(user),
                  profileCompletionPercentage: 1.00,
                ),
                const UpcomingSection(),
                const MatchSection(),
                const MentorsSection(),
                const ResourcesSection(),
                const Divider(thickness: 4.0, height: 4.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
