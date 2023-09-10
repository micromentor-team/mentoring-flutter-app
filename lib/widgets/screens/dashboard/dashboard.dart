import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_header.dart';
import 'package:mm_flutter_app/widgets/atoms/reminder_banner.dart';
import 'package:mm_flutter_app/widgets/molecules/invitation_section.dart';
import 'package:mm_flutter_app/widgets/molecules/recommended_mentors_scroll.dart';
import 'package:mm_flutter_app/widgets/molecules/resources_section.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_section.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with NavigationMixin<DashboardScreen> {
  late AuthenticatedUser _authenticatedUser;

  String _getGreeting(AppLocalizations l10n, String? fullName) {
    int hour = DateTime.now().hour;
    String timeOfDayGreeting;
    if (hour >= 5 && hour < 12) {
      timeOfDayGreeting = l10n.homeGreetingMorning;
    } else if (hour >= 12 && hour < 18) {
      timeOfDayGreeting = l10n.homeGreetingAfternoon;
    } else {
      timeOfDayGreeting = l10n.homeGreetingEvening;
    }
    return fullName != null
        ? '$timeOfDayGreeting, $fullName'
        : timeOfDayGreeting;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    if (Provider.of<UserProvider>(context).user != null) {
      _authenticatedUser = Provider.of<UserProvider>(context).user!;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.clear();
    });
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProfileHeader(
                  avatarUrl: _authenticatedUser.avatarUrl,
                  profileMessage:
                      _getGreeting(l10n, _authenticatedUser.fullName),
                  profileCompletionPercentage:
                      _authenticatedUser.profileCompletionPercentage,
                ),
                MaybeReminderBanner(
                  authenticatedUser: _authenticatedUser,
                ),
                RecommendedSection(
                  authenticatedUser: _authenticatedUser,
                ),
                const UpcomingSection(),
                InvitationSection(
                  authenticatedUser: _authenticatedUser,
                ),
                const ResourcesSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
