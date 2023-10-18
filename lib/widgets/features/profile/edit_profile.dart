import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/edit_experience_and_education.dart';
import 'package:provider/provider.dart';

import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import '../../../providers/base/operation_result.dart';
import '../../../providers/user_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../../utilities/utility.dart';
import 'components/edit_how_can_i_help.dart';
import 'components/edit_profile_about_me.dart';
import 'components/profile_experience_and_education.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen>
    with NavigationMixin<EditProfileScreen> {
  late final UserProvider _userProvider;
  late final AuthenticatedUser _authenticatedUser;
  late Future<OperationResult<UserDetailedProfile>> _userDetailedProfile;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(
      context,
      listen: false,
    );
    _authenticatedUser = _userProvider.user!;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _userDetailedProfile = _userProvider.findUserDetailedProfile(
      userId: _authenticatedUser.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return FutureBuilder(
      future: _userDetailedProfile,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      backgroundColor: theme.colorScheme.secondaryContainer,
                      leading: IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: theme.colorScheme.secondary,
                        ),
                        onPressed: () => context.pop(),
                      ),
                      title: Text(l10n.profileEditTitle),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(Insets.paddingLarge),
                        child: EditProfileContent(
                          userData: snapshot.data!.response!,
                          authenticatedUser: _authenticatedUser,
                        ))
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class EditProfileContent extends StatelessWidget {
  final UserDetailedProfile userData;
  final AuthenticatedUser authenticatedUser;

  const EditProfileContent({
    super.key,
    required this.userData,
    required this.authenticatedUser,
  });

  @override
  Widget build(BuildContext context) {
    final maybeMentorGroupMembership = userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentors.name)
        .firstOrNull
        ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null);

    return Column(children: [
      EditProfileAboutMe(
        pronouns: userData.pronounsDisplay,
        regionOfResidence: userData.regionOfResidence,
        cityOfResidence: userData.cityOfResidence,
        countryOfResidence: userData.countryOfResidence?.translatedValue,
        regionFrom: userData.regionOfOrigin,
        cityFrom: userData.cityOfOrigin,
        countryFrom: userData.countryOfOrigin?.translatedValue,
        linkedinUrl: userData.websites
            ?.where((e) => e.label == WebsiteLabels.linkedin.name)
            .firstOrNull
            ?.value,
        promptTitle: "The best piece of advice I’ve ever received is:",
        //TODO
        promptResponse:
            "Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies.",
        //TODO
        preferredLanguage: userData.preferredLanguage.translatedValue,
        spokenLanguages: userData.spokenLanguages
            .map((e) => e.translatedValue)
            .nonNulls
            .toList(),
      ),
      const Divider(),
      EditProfileHowCanIHelp(
          expertises: maybeMentorGroupMembership?.expertises
                  .map((e) => e.translatedValue!)
                  .toList() ??
              [],
          industries: maybeMentorGroupMembership?.industries
                  .map((e) => e.translatedValue!)
                  .toList() ??
              [],
          mentoringPreferences: const [
            "Weekly check-ins",
            "Monthly check-ins",
            "Informal chats",
            "Formal meetings",
            "Spot mentoring",
          ], //TODO
          expectations: maybeMentorGroupMembership?.expectationsForMentees),
      const Divider(),
      EditProfileExperienceAndEducation(
        experience: userData.businessExperiences
                ?.map(
                  (e) => ExperienceInput(
                    position: e.jobTitle,
                    companyName: e.businessName,
                    start: e.startDate,
                    end: e.endDate,
                    city: e.city,
                    state: e.state,
                    country: e.country,
                  ),
                )
                .toList() ??
            [],
        education: userData.academicExperiences
                ?.map((e) => EducationInput(
                      schoolName: e.institutionName,
                      start: e.startDate,
                      end: e.endDate,
                      title: e.degreeType,
                      major: e.fieldOfStudy,
                    ))
                .toList() ??
            [],
      ),
    ]);
  }
}
