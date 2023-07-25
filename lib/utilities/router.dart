import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:mm_flutter_app/widgets/screens/explore/invite_to_connect.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_archived_chats.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_received.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_sent.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile.dart';
import 'package:mm_flutter_app/widgets/screens/progress/progress.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/atoms/app_wrapper.dart';
import '../widgets/screens/channel_messages/channel_messages.dart';
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
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const StartScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signin,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SignInScreen(),
            );
          },
        ),
        GoRoute(
            path: Routes.signup,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                child: const SignUpScreen(),
              );
            }),
        GoRoute(
          path: Routes.loading,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const LoadingScreen(),
            );
          },
        ),
        ShellRoute(
          observers: [Provider.of<RouteObserver<PageRoute>>(context)],
          pageBuilder: (context, state, child) {
            return MaterialPage(
              key: state.pageKey,
              child: AppWrapper(child: child),
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: Routes.home,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const DashboardScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.explore,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const ExploreScreen(),
                );
              },
            ),
            GoRoute(
                path: Routes.exploreInviteToConnect,
                builder: (BuildContext context, GoRouterState state) {
                  List<ProfileQuickViewInfo> selectedProfiles =
                      state.extra as List<ProfileQuickViewInfo>;
                  return InviteToConnect(
                    initialSelectedProfiles: selectedProfiles,
                  );
                }),
            GoRoute(
              path: Routes.progress,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const ProgressScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChats,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxChatsScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChats$ChannelId,
              pageBuilder: (context, state) {
                final String channelId =
                    state.pathParameters[RouteParams.channelId]!;
                return MaterialPage(
                  key: state.pageKey,
                  child: ChannelMessagesScreen(
                    channelId: channelId,
                  ),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesReceived,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxInvitesReceivedScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesSent,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxInvitesSentScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxArchived,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxArchivedChatsScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.profile,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const ProfileScreen(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

mixin RouteAwareMixin<T extends StatefulWidget> on State<T>
    implements RouteAware {
  RouteObserver<PageRoute>? _routeObserver;
  bool _isActive = false;

  bool get isRouteActive => _isActive;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver = Provider.of<RouteObserver<PageRoute>>(
      context,
      listen: false,
    );
    _routeObserver!.subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void dispose() {
    _routeObserver?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPop() {
    _isActive = false;
  }

  @override
  void didPopNext() {
    _isActive = true;
  }

  @override
  void didPush() {
    _isActive = true;
  }

  @override
  void didPushNext() {
    _isActive = false;
  }
}
