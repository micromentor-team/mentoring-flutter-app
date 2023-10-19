import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/features/home/components/invitation_section.dart';
import 'package:mm_flutter_app/widgets/features/home/components/profile_header.dart';
import 'package:mm_flutter_app/widgets/features/home/components/recommended_section.dart';
import 'package:mm_flutter_app/widgets/features/home/components/reminder_banner.dart';
import 'package:mm_flutter_app/widgets/features/home/components/resources_section.dart';
import 'package:mm_flutter_app/widgets/features/home/home_skeleton.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utilities/navigation_mixin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with NavigationMixin<HomeScreen> {
  late AuthenticatedUser _authenticatedUser;
  bool _isLoading = true;

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
  void didChangeDependencies() async {
    super.didChangeDependencies();
    _isLoading = true;
    if (!pageRoute.isCurrent) return;
    if (Provider.of<UserProvider>(context).user != null) {
      _authenticatedUser = Provider.of<UserProvider>(context).user!;
      await Future.delayed(const Duration(seconds: 3));
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      print(pageRoute.isCurrent);
      scaffoldModel.clear();
    });
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: _isLoading
          ? const HomeSkeleton()
          : Column(
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
