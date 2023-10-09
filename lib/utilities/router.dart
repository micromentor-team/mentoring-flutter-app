import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/explore/recommended_mentors_filters.dart';
import 'package:mm_flutter_app/widgets/screens/explore/recommended_mentors_filters_advanced.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_received.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_invites_sent.dart';
import 'package:mm_flutter_app/widgets/screens/profile/edit_profile.dart';
import 'package:mm_flutter_app/widgets/screens/profile/invite_to_connect.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_birth_year.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_email.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_guidelines.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_password.dart';
import 'package:mm_flutter_app/widgets/screens/welcome/select_language.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/atoms/app_wrapper.dart';
import '../widgets/screens/explore/explore.dart';
import '../widgets/screens/home/home.dart';
import '../widgets/screens/inbox/channel_messages/channel_messages_screen.dart';
import '../widgets/screens/inbox/inbox_chat_list.dart';
import '../widgets/screens/inbox/invitation_detail.dart';
import '../widgets/screens/sign_in/sign_in_screen.dart';
import '../widgets/screens/sign_up/sign_up_completed.dart';
import '../widgets/screens/sign_up/sign_up_entrepreneur_company_name.dart';
import '../widgets/screens/sign_up/sign_up_entrepreneur_company_reason.dart';
import '../widgets/screens/sign_up/sign_up_entrepreneur_company_stage.dart';
import '../widgets/screens/sign_up/sign_up_entrepreneur_website.dart';
import '../widgets/screens/sign_up/sign_up_expertises.dart';
import '../widgets/screens/sign_up/sign_up_full_name.dart';
import '../widgets/screens/sign_up/sign_up_gender.dart';
import '../widgets/screens/sign_up/sign_up_group_membership.dart';
import '../widgets/screens/sign_up/sign_up_industries.dart';
import '../widgets/screens/sign_up/sign_up_languages.dart';
import '../widgets/screens/sign_up/sign_up_location.dart';
import '../widgets/screens/sign_up/sign_up_mentor_internationally.dart';
import '../widgets/screens/sign_up/sign_up_mentor_preferences.dart';
import '../widgets/screens/sign_up/sign_up_mentor_role.dart';
import '../widgets/screens/sign_up/sign_up_method.dart';
import '../widgets/screens/sign_up/sign_up_more_info.dart';
import '../widgets/screens/sign_up/sign_up_permissions.dart';
import '../widgets/screens/sign_up/sign_up_phone.dart';
import '../widgets/screens/sign_up/sign_up_profile_photo.dart';
import '../widgets/screens/sign_up/sign_up_pronouns.dart';
import '../widgets/screens/sign_up/sign_up_verification.dart';
import '../widgets/screens/sign_up/sign_up_welcome.dart';
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
            }),
        GoRoute(
            path: Routes.signupUserType.path,
            name: Routes.signupUserType.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupGroupMembershipScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEntrepreneurCompanyStage.path,
            name: Routes.signupEntrepreneurCompanyStage.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupEntrepreneurCompanyStageScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupExpertises.path,
            name: Routes.signupExpertises.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupExpertisesScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupMoreInfo.path,
            name: Routes.signupMoreInfo.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupMoreInfoScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupProfilePhoto.path,
            name: Routes.signupProfilePhoto.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupProfilePhotoScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupPronouns.path,
            name: Routes.signupPronouns.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupPronounsScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEntrepreneurCompanyName.path,
            name: Routes.signupEntrepreneurCompanyName.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupEntrepreneurCompanyNameScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEntrepreneurCompanyWebsite.path,
            name: Routes.signupEntrepreneurCompanyWebsite.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupEntrepreneurWebsiteScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEntrepreneurCompanyReason.path,
            name: Routes.signupEntrepreneurCompanyReason.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupEntrepreneurCompanyReasonScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupIndustries.path,
            name: Routes.signupIndustries.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupIndustriesScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupCompleted.path,
            name: Routes.signupCompleted.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupCompletedScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupMentorRole.path,
            name: Routes.signupMentorRole.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupMentorRoleScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupMentorPreferences.path,
            name: Routes.signupMentorPreferences.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupMentorPreferencesScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupMentorInternationally.path,
            name: Routes.signupMentorInternationally.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupMentorInternationallyScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupEmail.path,
            name: Routes.signupEmail.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupEmailScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupVerification.path,
            name: Routes.signupVerification.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupVerificationScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupPermissions.path,
            name: Routes.signupPermissions.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupPermissionsScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupFullName.path,
            name: Routes.signupFullName.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupFullNameScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupPhone.path,
            name: Routes.signupPhone.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupPhoneScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupGuidelines.path,
            name: Routes.signupGuidelines.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupGuidelinesScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupWelcome.path,
            name: Routes.signupWelcome.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupWelcomeScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupPassword.path,
            name: Routes.signupPassword.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                child: const SignupPasswordScreen(),
              );
            }),
        GoRoute(
            path: Routes.signupBirthYear.path,
            name: Routes.signupBirthYear.name,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                maintainState: false,
                child: const SignupBirthYearScreen(),
              );
            }),
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
          path: Routes.signupLanguages.path,
          name: Routes.signupLanguages.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const SignupLanguagesScreen(),
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
          path: Routes.profileEdit.path,
          name: Routes.profileEdit.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              maintainState: false,
              child: const EditProfile(),
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
    );
  }
}
