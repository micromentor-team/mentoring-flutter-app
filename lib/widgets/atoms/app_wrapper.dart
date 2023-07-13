import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

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
  int _currentTabIndex = 0;
  String? _appBarTitle;

  List<_Tab> _generateTabs(BuildContext context, AppLocalizations l10n) {
    return [
      const _Tab(route: Routes.home),
      const _Tab(route: Routes.explore),
      const _Tab(route: Routes.progress),
      _Tab(
        route: Routes.inboxChats,
        appBar: AppBar(
          title: Text(
            _appBarTitle ?? l10n.inboxTitleChats,
            style: TextStyles.appBarTitle(context),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(l10n.inboxTitle),
              ),
              ListTile(
                leading: const Icon(Icons.chat_bubble_outline),
                title: Text(l10n.inboxTitleChats),
                onTap: () {
                  // Close Drawer
                  Navigator.of(context).pop();
                  GoRouter.of(context).push(Routes.inboxChats);
                  setState(() {
                    _appBarTitle = l10n.inboxTitleChats;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add_outlined),
                title: Text(l10n.inboxTitleInvites),
                onTap: () {
                  // Close Drawer
                  Navigator.of(context).pop();
                  GoRouter.of(context).push(Routes.inboxInvites);
                  setState(() {
                    _appBarTitle = l10n.inboxTitleInvites;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.folder_outlined),
                title: Text(l10n.inboxTitleArchivedChats),
                onTap: () {
                  // Close Drawer
                  Navigator.of(context).pop();
                  GoRouter.of(context).push(Routes.inboxArchived);
                  setState(() {
                    _appBarTitle = l10n.inboxTitleArchivedChats;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      const _Tab(route: Routes.profile),
    ];
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith(Routes.explore)) {
      return 1;
    }
    if (location.startsWith(Routes.progress)) {
      return 2;
    }
    if (location.startsWith(Routes.inbox)) {
      return 3;
    }
    if (location.startsWith(Routes.profile)) {
      return 4;
    }
    if (location.startsWith(Routes.home)) {
      return 0;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final List<_Tab> tabs = _generateTabs(context, l10n);
    return Scaffold(
      body: widget.child,
      appBar: tabs[_currentTabIndex].appBar,
      drawer: tabs[_currentTabIndex].drawer,
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
        onTap: (index) {
          context.push(tabs[index].route);
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
    );
  }
}

class _Tab {
  final String route;
  final Drawer? drawer;
  final AppBar? appBar;

  const _Tab({
    required this.route,
    this.drawer,
    this.appBar,
  });
}
