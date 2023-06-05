import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_header.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  String _getGreeting(User user) {
    int hour = DateTime.now().hour;
    String timeOfDayGreeting;
    if(hour <= 5 && hour < 12){
      timeOfDayGreeting = 'Good\nmorning,';
    } else if(hour <= 12 && hour < 18){
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
        child: Column(
          children: [
            ProfileHeader(
              avatarUrl: user.avatarUrl,
              profileMessage: _getGreeting(user),
            ),
            Expanded(
              child: ListView(
                children: const [
                  Divider(thickness: 8.0),
                  UpcomingSection(),
                  SectionTile(
                    title: 'Things to do',
                    child: SizedBox(
                      width: double.infinity,
                      height: 80.0,
                      child: Placeholder(color: Colors.grey),
                    ),
                  ),
                  SectionTile(
                    title: 'For you',
                    child: SizedBox(
                      width: double.infinity,
                      height: 80.0,
                      child: Placeholder(color: Colors.grey),
                    ),
                  ),
                  Divider(thickness: 8.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}