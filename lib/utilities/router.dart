import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:mm_flutter_app/widgets/molecules/recommended_mentors_filters.dart';
import 'package:mm_flutter_app/widgets/molecules/recommended_mentors_filters_advanced.dart';
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
import '../widgets/screens/inbox/new_invite_detailed_profile.dart';
import '../widgets/screens/sign_in/sign_in_screen.dart';
import '../widgets/screens/sign_up/sign_up_screen.dart';

class AppRouter {
  AppRouter._private();

  static GoRouter createRouter(
      BuildContext context, GlobalKey<NavigatorState> navigatorKey) {
    return GoRouter(
      initialLocation: Routes.root.path,
      navigatorKey: navigatorKey,
      routes: [
        GoRoute(
          path: Routes.root.path,
          name: Routes.root.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const StartScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signin.path,
          name: Routes.signin.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: SignInScreen(nextRouteName: Routes.home.name),
            );
          },
        ),
        GoRoute(
            path: Routes.signup.path,
            name: Routes.signup.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                child: const SignUpScreen(),
              );
            }),
        GoRoute(
          path: Routes.loading.path,
          name: Routes.loading.name,
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
              path: Routes.home.path,
              name: Routes.home.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const DashboardScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.explore.path,
              name: Routes.explore.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const ExploreScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.exploreFilters.path,
              name: Routes.exploreFilters.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const RecommendedMentorsFilters(),
                );
              },
            ),
            GoRoute(
              path: Routes.exploreFiltersAdvanced.path,
              name: Routes.exploreFiltersAdvanced.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const RecommendedMentorsFiltersAdvanced(),
                );
              },
            ),
            GoRoute(
                path: Routes.exploreInviteToConnect.path,
                name: Routes.exploreInviteToConnect.name,
                builder: (BuildContext context, GoRouterState state) {
                  List<ProfileQuickViewInfo> selectedProfiles =
                      state.extra as List<ProfileQuickViewInfo>;
                  return InviteToConnect(
                    initialSelectedProfiles: selectedProfiles,
                  );
                }),
            GoRoute(
              path: Routes.progress.path,
              name: Routes.progress.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const ProgressScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChats.path,
              name: Routes.inboxChats.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxChatsScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChatsChannelId.path,
              name: Routes.inboxChatsChannelId.name,
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
              path: Routes.inboxInvitesReceived.path,
              name: Routes.inboxInvitesReceived.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxInvitesReceivedScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesSent.path,
              name: Routes.inboxInvitesSent.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxInvitesSentScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesReceivedProfile.path,
              name: Routes.inboxInvitesReceivedProfile.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const NewInviteDetailedProfile(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxArchived.path,
              name: Routes.inboxArchived.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const InboxArchivedChatsScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name,
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
