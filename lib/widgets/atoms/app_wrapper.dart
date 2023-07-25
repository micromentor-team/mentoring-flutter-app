import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/errors/errors.dart';
import 'package:provider/provider.dart';

import '../../providers/models/scaffold_model.dart';

/*
 * Contains bottom navigation bar and app bar
 */
class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key, required this.child});
  final Widget child;

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
          bottomNavigationBar: Builder(builder: (context) {
            return NavigationBar(
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
              onDestinationSelected: (int index) {
                switch (index) {
                  case 0:
                    context.push(Routes.home);
                    break;
                  case 1:
                    context.push(Routes.explore);
                    break;
                  case 2:
                    context.push(Routes.progress);
                    break;
                  case 3:
                    context.push(Routes.inboxChats);
                    break;
                  case 4:
                    context.push(Routes.profile);
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
