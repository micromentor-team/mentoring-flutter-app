import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_archived_chats.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites.dart';

import '../main.dart';
import '../widgets/atoms/app_wrapper.dart';
import '../widgets/screens/dashboard/dashboard.dart';
import '../widgets/screens/explore/explore.dart';
import '../widgets/screens/inbox/inbox_chats.dart';
import '../widgets/screens/sign_in/sign_in_screen.dart';
import '../widgets/screens/sign_up/sign_up_screen.dart';

class AppRouter {
  AppRouter._private();

  static GoRouter createRouter(BuildContext context) {
    return GoRouter(
      initialLocation: Routes.root,
      routes: [
        GoRoute(
          path: Routes.root,
          builder: (BuildContext context, GoRouterState state) {
            return const StartScreen();
          },
        ),
        GoRoute(
          path: Routes.signin,
          builder: (BuildContext context, GoRouterState state) {
            return const SignInScreen();
          },
        ),
        GoRoute(
            path: Routes.signup,
            builder: (BuildContext context, GoRouterState state) {
              return const SignUpScreen();
            }),
        GoRoute(
          path: Routes.loading,
          builder: (BuildContext context, GoRouterState state) {
            return const LoadingScreen();
          },
        ),
        ShellRoute(
          builder: (context, state, child) {
            return AppWrapper(child: child);
          },
          routes: <RouteBase>[
            GoRoute(
              path: Routes.home,
              builder: (BuildContext context, GoRouterState state) {
                return const DashboardScreen();
              },
            ),
            GoRoute(
              path: Routes.explore,
              builder: (BuildContext context, GoRouterState state) {
                return const ExploreScreen();
              },
            ),
            GoRoute(
              path: Routes.progress,
              builder: (BuildContext context, GoRouterState state) {
                return Center(
                  child: Text(AppLocalizations.of(context)!.navProgressText),
                );
              },
            ),
            GoRoute(
              path: Routes.inbox,
              redirect: (_, __) => Routes.inboxChats,
            ),
            GoRoute(
              path: Routes.inboxChats,
              builder: (BuildContext context, GoRouterState state) {
                return const InboxChatsScreen();
              },
            ),
            GoRoute(
              path: Routes.inboxInvites,
              builder: (BuildContext context, GoRouterState state) {
                return const InboxInvitesScreen();
              },
            ),
            GoRoute(
              path: Routes.inboxArchived,
              builder: (BuildContext context, GoRouterState state) {
                return const InboxArchivedChatsScreen();
              },
            ),
            GoRoute(
              path: Routes.profile,
              builder: (BuildContext context, GoRouterState state) {
                return Center(
                  child: Text(AppLocalizations.of(context)!.navProfileText),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
