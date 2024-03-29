import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../main.dart';
import '../services/graphql/providers/user_provider.dart';
import '../widgets/features/explore/screens/explore.dart';
import '../widgets/features/explore/screens/explore_advanced_filters.dart';
import '../widgets/features/explore/screens/explore_filters.dart';
import '../widgets/features/home/screens/home.dart';
import '../widgets/features/inbox/screens/inbox_chat_list.dart';
import '../widgets/features/inbox/screens/inbox_chat_messages.dart';
import '../widgets/features/inbox/screens/inbox_invitation_detail.dart';
import '../widgets/features/inbox/screens/inbox_invites_received.dart';
import '../widgets/features/inbox/screens/inbox_invites_sent.dart';
import '../widgets/features/profile/screens/edit_profile.dart';
import '../widgets/features/profile/screens/edit_profile_company_location.dart';
import '../widgets/features/profile/screens/edit_profile_company_mission.dart';
import '../widgets/features/profile/screens/edit_profile_company_name.dart';
import '../widgets/features/profile/screens/edit_profile_company_reason.dart';
import '../widgets/features/profile/screens/edit_profile_company_stage.dart';
import '../widgets/features/profile/screens/edit_profile_company_website.dart';
import '../widgets/features/profile/screens/edit_profile_connect_linkedin.dart';
import '../widgets/features/profile/screens/edit_profile_current_location.dart';
import '../widgets/features/profile/screens/edit_profile_education.dart';
import '../widgets/features/profile/screens/edit_profile_experience.dart';
import '../widgets/features/profile/screens/edit_profile_expertises.dart';
import '../widgets/features/profile/screens/edit_profile_industries.dart';
import '../widgets/features/profile/screens/edit_profile_mentoring_preferences.dart';
import '../widgets/features/profile/screens/edit_profile_origin_location.dart';
import '../widgets/features/profile/screens/edit_profile_other_languages.dart';
import '../widgets/features/profile/screens/edit_profile_preferred_language.dart';
import '../widgets/features/profile/screens/edit_profile_pronouns.dart';
import '../widgets/features/profile/screens/invite_to_connect.dart';
import '../widgets/features/profile/screens/profile.dart';
import '../widgets/features/sign_in/screens/sign_in.dart';
import '../widgets/features/sign_up/screens/sign_up_birth_year.dart';
import '../widgets/features/sign_up/screens/sign_up_completed.dart';
import '../widgets/features/sign_up/screens/sign_up_credentials.dart';
import '../widgets/features/sign_up/screens/sign_up_entrepreneur_company_name.dart';
import '../widgets/features/sign_up/screens/sign_up_entrepreneur_company_stage.dart';
import '../widgets/features/sign_up/screens/sign_up_expertises.dart';
import '../widgets/features/sign_up/screens/sign_up_gender.dart';
import '../widgets/features/sign_up/screens/sign_up_group_membership.dart';
import '../widgets/features/sign_up/screens/sign_up_language.dart';
import '../widgets/features/sign_up/screens/sign_up_location.dart';
import '../widgets/features/sign_up/screens/sign_up_mentor_role.dart';
import '../widgets/features/sign_up/screens/sign_up_method.dart';
import '../widgets/features/sign_up/screens/sign_up_phone.dart';
import '../widgets/features/sign_up/screens/sign_up_reason.dart';
import '../widgets/features/welcome/screens/welcome.dart';
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
                    state.uri.queryParameters[RouteParams.nextRouteName] ??
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
              maintainState: true,
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
          path: Routes.profileEditPronouns.path,
          name: Routes.profileEditPronouns.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditProfilePronounsScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditLinkedin.path,
          name: Routes.profileEditLinkedin.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditConnectLinkedInScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCurrentLocation.path,
          name: Routes.profileEditCurrentLocation.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCurrentLocationScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditOriginLocation.path,
          name: Routes.profileEditOriginLocation.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditOriginLocationScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditLanguagePreferred.path,
          name: Routes.profileEditLanguagePreferred.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditPreferredLanguageScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditLanguageOthers.path,
          name: Routes.profileEditLanguageOthers.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditOtherLanguagesScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditEducationIndex.path,
          name: Routes.profileEditEducationIndex.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            final int experienceIndex = int.parse(
              state.pathParameters[RouteParams.experienceIndex]!,
            );
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditEducationScreen(
                userData: userData,
                experienceIndex: experienceIndex,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditEducationNew.path,
          name: Routes.profileEditEducationNew.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditEducationScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditExperienceIndex.path,
          name: Routes.profileEditExperienceIndex.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            final int experienceIndex = int.parse(
              state.pathParameters[RouteParams.experienceIndex]!,
            );
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditExperienceScreen(
                userData: userData,
                experienceIndex: experienceIndex,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditExperienceNew.path,
          name: Routes.profileEditExperienceNew.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditExperienceScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditExpertisesTop.path,
          name: Routes.profileEditExpertisesTop.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditExpertisesScreen(
                userData: userData,
                isTopExpertises: true,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditExpertisesAdditional.path,
          name: Routes.profileEditExpertisesAdditional.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditExpertisesScreen(
                userData: userData,
                isTopExpertises: false,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditIndustries.path,
          name: Routes.profileEditIndustries.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditIndustriesScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditMentoringPreferences.path,
          name: Routes.profileEditMentoringPreferences.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditMentoringPreferencesScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyStage.path,
          name: Routes.profileEditCompanyStage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyStageScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyName.path,
          name: Routes.profileEditCompanyName.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyNameScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyWebsite.path,
          name: Routes.profileEditCompanyWebsite.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyWebsiteScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyLocation.path,
          name: Routes.profileEditCompanyLocation.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyLocationScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyMission.path,
          name: Routes.profileEditCompanyMission.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyMissionScreen(
                userData: userData,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.profileEditCompanyReason.path,
          name: Routes.profileEditCompanyReason.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final userData = state.extra as UserDetailedProfile;
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: EditCompanyReasonScreen(
                userData: userData,
              ),
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
