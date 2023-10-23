import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/explore/explore_advanced_filters.dart';
import 'package:mm_flutter_app/widgets/features/explore/explore_filters.dart';
import 'package:mm_flutter_app/widgets/features/inbox/inbox_invites_received.dart';
import 'package:mm_flutter_app/widgets/features/inbox/inbox_invites_sent.dart';
import 'package:mm_flutter_app/widgets/features/profile/edit_profile.dart';
import 'package:mm_flutter_app/widgets/features/profile/invite_to_connect.dart';
import 'package:mm_flutter_app/widgets/features/profile/profile.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/sign_up_birth_year.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/sign_up_credentials.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/features/explore/explore.dart';
import '../widgets/features/home/home.dart';
import '../widgets/features/inbox/inbox_chat_list.dart';
import '../widgets/features/inbox/inbox_chat_messages.dart';
import '../widgets/features/inbox/inbox_invitation_detail.dart';
import '../widgets/features/profile/edit_profile_city.dart';
import '../widgets/features/profile/edit_profile_linkedin.dart';
import '../widgets/features/profile/edit_profile_origin_location.dart';
import '../widgets/features/profile/edit_profile_other_languages.dart';
import '../widgets/features/profile/edit_profile_preferred_language.dart';
import '../widgets/features/profile/edit_profile_prompt.dart';
import '../widgets/features/profile/edit_profile_pronoun.dart';
import '../widgets/features/sign_in/sign_in.dart';
import '../widgets/features/sign_up/sign_up_completed.dart';
import '../widgets/features/sign_up/sign_up_entrepreneur_company_name.dart';
import '../widgets/features/sign_up/sign_up_entrepreneur_company_stage.dart';
import '../widgets/features/sign_up/sign_up_expertises.dart';
import '../widgets/features/sign_up/sign_up_gender.dart';
import '../widgets/features/sign_up/sign_up_group_membership.dart';
import '../widgets/features/sign_up/sign_up_language.dart';
import '../widgets/features/sign_up/sign_up_location.dart';
import '../widgets/features/sign_up/sign_up_mentor_role.dart';
import '../widgets/features/sign_up/sign_up_method.dart';
import '../widgets/features/sign_up/sign_up_phone.dart';
import '../widgets/features/sign_up/sign_up_reason.dart';
import '../widgets/features/welcome/welcome.dart';
import '../widgets/shared/app_wrapper.dart';

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
                nextRouteName:
                    state.queryParameters[RouteParams.nextRouteName] ??
                        Routes.home.name,
              ),
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
        _createSignUpShellRoute(context),
        _createNavigationShellRoute(context),
      ],
    );
  }

  static ShellRoute _createSignUpShellRoute(BuildContext context) {
    return ShellRoute(
      pageBuilder: (BuildContext context, GoRouterState state, child) {
        return MaterialPage(
          key: state.pageKey,
          maintainState: true,
          child: child,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.signup.path,
          name: Routes.signup.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupMethodScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupCredentials.path,
          name: Routes.signupCredentials.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupCredentialsScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupGroupMembership.path,
          name: Routes.signupGroupMembership.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupGroupMembershipScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupEntrepreneurCompanyStage.path,
          name: Routes.signupEntrepreneurCompanyStage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupEntrepreneurCompanyStageScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupExpertises.path,
          name: Routes.signupExpertises.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupExpertisesScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupEntrepreneurCompanyName.path,
          name: Routes.signupEntrepreneurCompanyName.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupEntrepreneurCompanyNameScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupReason.path,
          name: Routes.signupReason.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupReasonScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupCompleted.path,
          name: Routes.signupCompleted.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupCompletedScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupMentorRole.path,
          name: Routes.signupMentorRole.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupMentorRoleScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupPhone.path,
          name: Routes.signupPhone.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupPhoneScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupBirthYear.path,
          name: Routes.signupBirthYear.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupBirthYearScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupGender.path,
          name: Routes.signupGender.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupGenderScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupLocation.path,
          name: Routes.signupLocation.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupLocationScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.signupLanguage.path,
          name: Routes.signupLanguage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupLanguageScreen(),
            );
          },
        ),
      ],
    );
  }

  static ShellRoute _createNavigationShellRoute(BuildContext context) {
    return ShellRoute(
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
              child: const HomeScreen(),
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
              child: const ExploreFiltersScreen(),
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
              child: const ExploreAdvancedFiltersScreen(),
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
              child: InboxChatMessages(
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
              child: InboxInvitationDetailScreen(
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
              child: InboxInvitationDetailScreen(
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
              child: InboxChatMessages(
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
          path: Routes.profileEdit.path,
          name: Routes.profileEdit.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditProfileScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editPronouns.path,
          name: Routes.editPronouns.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditProfilePronounScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editLinkedin.path,
          name: Routes.editLinkedin.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditLinkedInScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editCity.path,
          name: Routes.editCity.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditCityScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editOriginLocation.path,
          name: Routes.editOriginLocation.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditOriginLocationScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editPreferredLanguage.path,
          name: Routes.editPreferredLanguage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditPreferredLanguageScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editOtherLanguages.path,
          name: Routes.editOtherLanguages.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditOtherLanguagesScreen(),
            );
          },
        ),
        GoRoute(
          path: Routes.editPrompt.path,
          name: Routes.editPrompt.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditPromptScreen(),
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
              child: InviteToConnectScreen(
                userId: userId,
              ),
            );
          },
        ),
      ],
    );
  }
}
