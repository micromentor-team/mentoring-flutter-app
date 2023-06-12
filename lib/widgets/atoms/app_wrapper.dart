import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        return context.go('/home');
      case 1:
        return context.go('/explore');
      case 2:
        return context.go('/journey');
      case 3:
        return context.go('/inbox');
      case 4:
        return context.go('/profile');
      default:
        return context.go('/');
    }
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('/explore')) {
      return 1;
    }
    if (location.startsWith('/journey')) {
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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/MicroMentor.png",
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context)!.navHomeText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.explore),
            label: AppLocalizations.of(context)!.navExploreText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.auto_graph),
            label: AppLocalizations.of(context)!.navJourneyText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.inbox),
            label: AppLocalizations.of(context)!.navInboxText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
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
