import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/notification_bubble.dart';

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
  String _currentRoute = Routes.home;

  final List<String> _navBarTabRoutes = [
    Routes.home,
    Routes.explore,
    Routes.progress,
    Routes.inboxChats,
    Routes.profile
  ];

  _ScaffoldParams _createRouteScaffoldParams(AppLocalizations l10n) {
    final AppBar? appBar;
    final Drawer? drawer;
    switch (_currentRoute) {
      case Routes.inboxChats:
      case Routes.inboxArchived:
      case Routes.inboxInvitesSent:
      case Routes.inboxInvitesReceived:
        // TODO(m-rosario): Calculate notifications from backend call
        const int chatsNotifications = 8;
        const int invitesNotifications = 13;
        const int totalNotifications =
            chatsNotifications + invitesNotifications;
        appBar = AppBar(
          leading: Builder(
            builder: (context) {
              return Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                  if (totalNotifications > 0)
                    const Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: Insets.widgetSmallInset,
                        start: Insets.widgetSmallInset,
                      ),
                      child: NotificationBubble(
                        notifications: totalNotifications,
                      ),
                    ),
                ],
              );
            },
          ),
          title: Text(
            _getAppBarTitle(
                  l10n,
                ) ??
                l10n.inboxTitleChats,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          centerTitle: true,
          bottom: _currentRoute.startsWith(Routes.inboxInvites)
              ? TabBar(
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.mail_outline),
                          const SizedBox(width: Insets.widgetSmallInset),
                          Text(l10n.inboxInvitesReceived),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.send_outlined),
                          const SizedBox(width: Insets.widgetSmallInset),
                          Text(l10n.inboxInvitesSent),
                        ],
                      ),
                    ),
                  ],
                  onTap: (index) {
                    String newRoute;
                    if (index == 1) {
                      newRoute = Routes.inboxInvitesSent;
                    } else {
                      newRoute = Routes.inboxInvitesReceived;
                    }
                    GoRouter.of(context).push(newRoute);
                    setState(() {
                      _currentRoute = newRoute;
                    });
                  },
                )
              : null,
        );
        drawer = Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: Dimensions.drawerHeaderHeight,
                child: DrawerHeader(
                  child: Text(l10n.inboxTitle),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.chat_bubble_outline),
                title: Text(l10n.inboxTitleChats),
                trailing: chatsNotifications > 0
                    ? Text(
                        chatsNotifications > Limits.maxNotificationsDisplayed
                            ? Identifiers.notificationOverflow
                            : chatsNotifications.toString(),
                      )
                    : null,
                onTap: () {
                  // Close Drawer
                  Navigator.of(context).pop();
                  GoRouter.of(context).push(Routes.inboxChats);
                  setState(() {
                    _currentRoute = Routes.inboxChats;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add_outlined),
                title: Text(l10n.inboxTitleInvites),
                trailing: invitesNotifications > 0
                    ? Text(
                        invitesNotifications > Limits.maxNotificationsDisplayed
                            ? Identifiers.notificationOverflow
                            : invitesNotifications.toString(),
                      )
                    : null,
                onTap: () {
                  // Close Drawer
                  Navigator.of(context).pop();
                  GoRouter.of(context).push(Routes.inboxInvites);
                  setState(() {
                    _currentRoute = Routes.inboxInvitesReceived;
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
                    _currentRoute = Routes.inboxArchived;
                  });
                },
              ),
            ],
          ),
        );
        break;
      default:
        appBar = null;
        drawer = null;
        break;
    }
    return _ScaffoldParams(
      appBar: appBar,
      drawer: drawer,
    );
  }

  String? _getAppBarTitle(AppLocalizations l10n) {
    if (_currentRoute == Routes.inboxChats) {
      return l10n.inboxTitleChats;
    } else if (_currentRoute == Routes.inboxArchived) {
      return l10n.inboxTitleArchivedChats;
    } else if (_currentRoute == Routes.inboxInvitesReceived ||
        _currentRoute == Routes.inboxInvitesSent) {
      return l10n.inboxTitleInvites;
    }
    return null;
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith(Routes.home)) {
      return 0;
    }
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
    return 0;
  }

  Scaffold _createMainScaffold(
    BuildContext context,
    AppLocalizations l10n,
    _ScaffoldParams scaffoldParams,
  ) {
    return Scaffold(
      body: widget.child,
      appBar: scaffoldParams.appBar,
      drawer: scaffoldParams.drawer,
      bottomNavigationBar: NavigationBar(
        destinations: <Widget>[
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            label: AppLocalizations.of(context)!.navHomeText,
          ),
          NavigationDestination(
            icon: const Icon(Icons.search_outlined),
            label: AppLocalizations.of(context)!.navExploreText,
          ),
          NavigationDestination(
            icon: const Icon(Icons.incomplete_circle),
            label: AppLocalizations.of(context)!.navProgressText,
          ),
          NavigationDestination(
            icon: const Icon(Icons.mail_outline),
            label: AppLocalizations.of(context)!.navInboxText,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outlined),
            label: AppLocalizations.of(context)!.navProfileText,
          ),
        ],
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) {
          context.push(_navBarTabRoutes[index]);
          setState(() {
            _currentRoute = _navBarTabRoutes[index];
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final _ScaffoldParams scaffoldParams = _createRouteScaffoldParams(l10n);
    TabBar? navBarTabBar;
    try {
      navBarTabBar = scaffoldParams.appBar?.bottom as TabBar?;
    } catch (_) {
      navBarTabBar = null;
    }
    final Scaffold mainScaffold = _createMainScaffold(
      context,
      l10n,
      scaffoldParams,
    );
    return (navBarTabBar?.tabs.length ?? 0) == 0
        ? mainScaffold
        : DefaultTabController(
            length: navBarTabBar!.tabs.length,
            child: mainScaffold,
          );
  }
}

class _ScaffoldParams {
  final Drawer? drawer;
  final AppBar? appBar;

  const _ScaffoldParams({
    this.drawer,
    this.appBar,
  });
}
