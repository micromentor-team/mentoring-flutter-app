import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../models/inbox_model.dart';
import '../../models/scaffold_model.dart';
import '../../utilities/errors/errors.dart';
import 'notification_bubble.dart';

/*
 * Contains bottom navigation bar and app bar
 */
class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key, required this.child});
  final Widget child;

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith(Routes.home.path)) {
      return 0;
    }
    if (location.startsWith(Routes.explore.path)) {
      return 1;
    }
    if (location.startsWith(Routes.inbox.path)) {
      return 2;
    }
    if (location.startsWith(Routes.profile.path)) {
      return 3;
    }
    return 0;
  }

  Widget _createMainScaffold(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Consumer<ScaffoldModel>(
      builder: (context, scaffoldModel, child) {
        final Scaffold mainScaffold = Scaffold(
          body: child,
          appBar: scaffoldModel.appBar,
          drawer: scaffoldModel.drawer,
          bottomNavigationBar: scaffoldModel.hideNavBar
              ? null
              : Builder(builder: (context) {
                  return NavigationBar(
                    destinations: <Widget>[
                      NavigationDestination(
                        icon: const Icon(Icons.home_outlined),
                        label: AppLocalizations.of(context)!.navTabHome,
                      ),
                      NavigationDestination(
                        icon: const Icon(Icons.search_outlined),
                        label: AppLocalizations.of(context)!.navTabExplore,
                      ),
                      NavigationDestination(
                        icon: Selector<InboxModel, int>(
                          selector: (_, inboxModel) =>
                              inboxModel.inboxNotifications,
                          builder: (context, inboxNotifications, child) {
                            return Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                child!,
                                if (inboxNotifications > 0)
                                  NotificationBubble(
                                    notifications: inboxNotifications,
                                  ),
                              ],
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Insets.paddingExtraSmall,
                              horizontal: Insets.paddingMedium,
                            ),
                            child: Icon(Icons.mail_outline),
                          ),
                        ),
                        label: AppLocalizations.of(context)!.navTabInbox,
                      ),
                      NavigationDestination(
                        icon: const Icon(Icons.person_outlined),
                        label: AppLocalizations.of(context)!.navTabProfile,
                      ),
                    ],
                    selectedIndex: _calculateSelectedIndex(context),
                    onDestinationSelected: (int index) {
                      switch (index) {
                        case 0:
                          context.push(Routes.home.path);
                          break;
                        case 1:
                          context.push(Routes.explore.path);
                          break;
                        case 2:
                          context.push(Routes.inboxChats.path);
                          break;
                        case 3:
                          context.push(Routes.profile.path);
                          break;
                        default:
                          throw UnexpectedStateError(
                            message: 'Invalid navBar tab index',
                          );
                      }
                    },
                  );
                }),
        );
        TabBar? navBarTabBar;
        try {
          navBarTabBar = scaffoldModel.appBar?.bottom as TabBar?;
        } catch (_) {
          navBarTabBar = null;
        }
        return (navBarTabBar?.tabs.length ?? 0) == 0
            ? mainScaffold
            : DefaultTabController(
                length: navBarTabBar!.tabs.length,
                child: mainScaffold,
              );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return _createMainScaffold(
      context,
      l10n,
    );
  }
}
