import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

/*
 * Contains bottom navigation bar and app bar
 */
class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key, required this.child});
  final Widget child;

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        context.push('/home');
      case 1:
        context.push('/explore');
      case 2:
        context.push('/progress');
      case 3:
        context.push('/inbox');
      case 4:
        context.push('/profile');
      default:
        context.push('/');
    }
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('/explore')) {
      return 1;
    }
    if (location.startsWith('/progress')) {
      return 2;
    }
    if (location.startsWith('/inbox')) {
      return 3;
    }
    if (location.startsWith('/profile')) {
      return 4;
    }
    if (location.startsWith('/home')) {
      return 0;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: AppLocalizations.of(context)!.navHomeText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
            label: AppLocalizations.of(context)!.navExploreText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.incomplete_circle),
            label: AppLocalizations.of(context)!.navProgressText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.mail_outline),
            label: AppLocalizations.of(context)!.navInboxText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outlined),
            label: AppLocalizations.of(context)!.navProfileText,
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
