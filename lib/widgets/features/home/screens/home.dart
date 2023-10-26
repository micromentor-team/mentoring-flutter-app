import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../components/invitation_section.dart';
import '../components/profile_header.dart';
import '../components/recommended_section.dart';
import '../components/reminder_banner.dart';
import '../components/resources_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with NavigationMixin<HomeScreen> {
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
                ),
                MaybeReminderBanner(
                  authenticatedUser: _authenticatedUser,
                ),
                InvitationSection(
                  authenticatedUser: _authenticatedUser,
                ),
                const RecommendedSection(),
                const ResourcesSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
