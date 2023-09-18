import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/explore/recommended_mentors_filters.dart';
import 'package:mm_flutter_app/widgets/screens/explore/recommended_mentors_filters_advanced.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_received.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_sent.dart';
import 'package:mm_flutter_app/widgets/screens/profile/invite_to_connect.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_email.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_password.dart';
import 'package:mm_flutter_app/widgets/screens/welcome/select_language.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/atoms/app_wrapper.dart';
import '../widgets/screens/dashboard/dashboard.dart';
import '../widgets/screens/explore/explore.dart';
import '../widgets/screens/inbox/channel_messages/channel_messages_screen.dart';
import '../widgets/screens/inbox/inbox_chat_list.dart';
import '../widgets/screens/inbox/invitation_detail.dart';
import '../widgets/screens/sign_in/sign_in_screen.dart';
import '../widgets/screens/sign_up/mentor_or_entrepreneur.dart';
import '../widgets/screens/sign_up/sign_up_screen.dart';
import '../widgets/screens/welcome/welcome_screen.dart';

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
              maintainState: false,
              child: StartScreen(
                  nextRouteName: state.queryParameters['nextRouteName'] ??
                      Routes.home.name),
            );
          },
        ),
        GoRoute(
          path: Routes.welcome.path,
          name: Routes.welcome.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const WelcomeScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.selectLanguage.path,
          name: Routes.selectLanguage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SelectLanguage(),
            );
          },
        ),
        GoRoute(
          path: Routes.signin.path,
          name: Routes.signin.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
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
                maintainState: false,
                child: const SignUpScreen(),
              );
            }),
        GoRoute(
            path: Routes.entrepreneurOrMentor.path,
            name: Routes.entrepreneurOrMentor.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const MentorOrEntrepreneurScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEmail.path,
            name: Routes.signupEmail.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignUpEmail(),
              );
            }),
        GoRoute(
            path: Routes.signupPassword.path,
            name: Routes.signupPassword.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                child: const SignUpPassword(),
              );
            }),
        GoRoute(
          path: Routes.loading.path,
          name: Routes.loading.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const LoadingScreen(),
            );
          },
        ),
        ShellRoute(
          observers: [Provider.of<RouteObserver<PageRoute>>(context)],
          pageBuilder: (BuildContext context, GoRouterState state, child) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: true,
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
                  maintainState: false,
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
                  maintainState: true,
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
                  maintainState: true,
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
                  maintainState: true,
                  child: const RecommendedMentorsFiltersAdvanced(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChats.path,
              name: Routes.inboxChats.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: const InboxChatListScreen(isArchivedForUser: false),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxChatsChannelId.path,
              name: Routes.inboxChatsChannelId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String channelId =
                    state.pathParameters[RouteParams.channelId]!;
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: ChannelMessagesScreen(
                    channelId: channelId,
                    isArchivedForUser: false,
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
                  maintainState: false,
                  child: const InboxInvitesReceivedScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesReceivedId.path,
              name: Routes.inboxInvitesReceivedId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String channelInvitationId =
                    state.pathParameters[RouteParams.channelInvitationId]!;
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: InvitationDetail(
                    channelInvitationId: channelInvitationId,
                    invitationDirection: MessageDirection.received,
                  ),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesSent.path,
              name: Routes.inboxInvitesSent.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: const InboxInvitesSentScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxInvitesSentId.path,
              name: Routes.inboxInvitesSentId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String channelInvitationId =
                    state.pathParameters[RouteParams.channelInvitationId]!;
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: InvitationDetail(
                    channelInvitationId: channelInvitationId,
                    invitationDirection: MessageDirection.sent,
                  ),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxArchived.path,
              name: Routes.inboxArchived.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: const InboxChatListScreen(isArchivedForUser: true),
                );
              },
            ),
            GoRoute(
              path: Routes.inboxArchivedChannelId.path,
              name: Routes.inboxArchivedChannelId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String channelId =
                    state.pathParameters[RouteParams.channelId]!;
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: ChannelMessagesScreen(
                    channelId: channelId,
                    isArchivedForUser: true,
                  ),
                );
              },
            ),
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: const ProfileScreen(),
                );
              },
            ),
            GoRoute(
              path: Routes.profileId.path,
              name: Routes.profileId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String userId = state.pathParameters[RouteParams.userId]!;
                return MaterialPage(
                  key: state.pageKey,
                  child: ProfileScreen(
                    userId: userId,
                  ),
                );
              },
            ),
            GoRoute(
              path: Routes.profileInviteId.path,
              name: Routes.profileInviteId.name,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final String userId = state.pathParameters[RouteParams.userId]!;
                return MaterialPage(
                  key: state.pageKey,
                  maintainState: false,
                  child: InviteToConnect(
                    userId: userId,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
