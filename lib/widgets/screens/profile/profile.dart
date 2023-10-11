import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/screens/profile/about_my_business.dart';
import 'package:mm_flutter_app/widgets/screens/profile/how_can_i_help_section.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_about_me.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_basic_info.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_experience_and_education.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_page_header.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../providers/models/inbox_model.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../../utilities/scaffold_utils/user_popup_menu_button.dart';

class ProfileScreen extends StatefulWidget {
  final String? userId;
  const ProfileScreen({
    super.key,
    this.userId,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with NavigationMixin<ProfileScreen> {
  late final bool _isMyProfile;
  late final UserProvider _userProvider;
  late final AuthenticatedUser _authenticatedUser;
  late final InboxModel _inboxModel;
  late Future<OperationResult<UserDetailedProfile>> _userDetailedProfile;

  @override
  void initState() {
    super.initState();
    _isMyProfile = widget.userId == null;
    _userProvider = Provider.of<UserProvider>(
      context,
      listen: false,
    );
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
    _authenticatedUser = _userProvider.user!;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _userDetailedProfile = _userProvider.findUserDetailedProfile(
      userId: _isMyProfile ? _authenticatedUser.id : widget.userId!,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.clear();
    });
    return FutureBuilder(
      future: _userDetailedProfile,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            return Selector<
                InboxModel,
                Tuple2<List<ReceivedChannelInvitation>?,
                    List<SentChannelInvitation>?>>(
              selector: (_, inboxModel) => Tuple2(
                inboxModel.pendingReceivedInvitations,
                inboxModel.pendingSentInvitations,
              ),
              shouldRebuild: (oldValue, newValue) =>
                  !(const DeepCollectionEquality.unordered()
                      .equals(oldValue, newValue)) ||
                  _inboxModel.invitesState != AsyncState.loading,
              builder: (_, __, ___) {
                return AppUtility.widgetForAsyncState(
                  state: _isMyProfile
                      ? AsyncState.ready
                      : _inboxModel.invitesState,
                  onReady: () {
                    return SafeArea(
                      child: ProfileScreenScroll(
                        userData: snapshot.data!.response!,
                        isMyProfile: _isMyProfile,
                        authenticatedUser: _authenticatedUser,
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

class ProfileScreenScroll extends StatefulWidget {
  final UserDetailedProfile userData;
  final bool isMyProfile;
  final AuthenticatedUser authenticatedUser;

  const ProfileScreenScroll({
    super.key,
    required this.userData,
    required this.isMyProfile,
    required this.authenticatedUser,
  });

  @override
  State<ProfileScreenScroll> createState() => _ProfileScreenScrollState();
}

class _ProfileScreenScrollState extends State<ProfileScreenScroll> {
  late final InboxModel _inboxModel;

  @override
  void initState() {
    super.initState();
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final userData = widget.userData;
    final company = userData.companies.firstOrNull;
    final maybeMentorGroupMembership = userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentors.name)
        .firstOrNull
        ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null);
    final maybeMenteeGroupMembership = userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentees.name)
        .firstOrNull
        ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null);
    final Set<String> languages = {
      userData.preferredLanguage.translatedValue!,
      ...userData.spokenLanguages.nonNulls.map((e) => e.translatedValue!),
    };
    return SingleChildScrollView(
      child: Column(
        children: [
          Builder(
            builder: (context) {
              final invitesFromUser = _inboxModel.pendingReceivedInvitations
                      ?.where((e) => e.sender.id == userData.id)
                      .toList() ??
                  [];
              final invitesToUser = _inboxModel.pendingSentInvitations
                      ?.where((e) => e.recipient.id == userData.id)
                      .toList() ??
                  [];
              final userId = userData.id;
              final userFirstName = userData.firstName ?? '';

              if (widget.isMyProfile) {
                return ProfilePageHeader(
                  authenticatedUser: widget.authenticatedUser,
                  userId: userId,
                  userFirstName: userFirstName,
                  invitationDirection: MessageDirection.self,
                );
              } else if (_inboxModel.hasChannelWithUser(widget.userData.id)) {
                // Users are already connected
                return const SizedBox(width: 0, height: 0);
              } else if (invitesFromUser.isNotEmpty) {
                // There is a pending invitation received from this user
                return ProfilePageHeader(
                  authenticatedUser: widget.authenticatedUser,
                  userId: userId,
                  userFirstName: userFirstName,
                  invitationId: invitesFromUser
                      .firstWhere((e) =>
                          e.status == Enum$ChannelInvitationStatus.created)
                      .id,
                  invitationDirection: MessageDirection.received,
                );
              } else if (invitesToUser.isNotEmpty) {
                // There is a pending invitation sent to this user
                return ProfilePageHeader(
                  authenticatedUser: widget.authenticatedUser,
                  userId: userId,
                  userFirstName: userFirstName,
                  invitationId: invitesToUser
                      .firstWhere((e) =>
                          e.status == Enum$ChannelInvitationStatus.created)
                      .id,
                  invitationDirection: MessageDirection.sent,
                );
              } else {
                // There is no connection between users
                return ProfilePageHeader(
                  authenticatedUser: widget.authenticatedUser,
                  userId: userId,
                  userFirstName: userFirstName,
                );
              }
            },
          ),
          ProfileBasicInfo(
            isMyProfile: widget.isMyProfile,
            userType:
                userData.offersHelp ? UserType.mentor : UserType.entrepreneur,
            fullName: userData.fullName!,
            avatarUrl: userData.avatarUrl,
            pronouns: userData.pronounsDisplay,
            affiliations: const ["Verizon Digital Ready"], //TODO
            company: company?.name,
            companyRole: userData.jobTitle,
            education: userData.educationLevel?.translatedValue,
            linkedinUrl: userData.websites
                ?.where((e) => e.label == WebsiteLabels.linkedin.name)
                .firstOrNull
                ?.value,
            vacationMode: true, //TODO
            popupMenu: UserPopupMenuButton(
              userFullName: userData.fullName!,
              userId: userData.id,
            ),
          ),
          const Divider(),
          ProfileAboutMe(
            regionOfResidence: userData.regionOfResidence,
            cityOfResidence: userData.cityOfResidence,
            countryOfResidence: userData.countryOfResidence?.translatedValue,
            regionFrom: userData.regionOfOrigin,
            cityFrom: userData.cityOfOrigin,
            countryFrom: userData.countryOfOrigin?.translatedValue,
            promptTitle:
                "The best piece of advice I’ve ever received is:", //TODO
            promptResponse:
                "Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies.", //TODO
            languages: languages.toList(growable: false),
          ),
          if (userData.seeksHelp && company != null) ...[
            const Divider(),
            AboutMyBusiness(
              companyInput: CompanyInput(
                name: company.name,
                website: company.websites?.first.value,
                stage: company.companyStage?.translatedValue,
                city: "Washington D.C.", //TODO
                country: "USA", //TODO
                industry: maybeMenteeGroupMembership?.industry?.translatedValue,
                expertisesSought: maybeMenteeGroupMembership?.soughtExpertises
                        .map((e) => e.translatedValue!)
                        .toList() ??
                    [],
                mission: company.description,
                imageUrls: [
                  "https://st2.depositphotos.com/1326558/7163/i/600/depositphotos_71632883-stock-photo-mexican-tacos-with-meat-vegetables.jpg",
                  "https://st3.depositphotos.com/13349494/32631/i/600/depositphotos_326317470-stock-photo-cropped-view-man-adding-minced.jpg",
                ], //TODO
                motivation:
                    maybeMenteeGroupMembership?.reasonsForStartingBusiness,
              ),
            ),
          ],
          if (userData.offersHelp) ...[
            const Divider(),
            HowCanIHelpSection(
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
                expectations:
                    maybeMentorGroupMembership?.expectationsForMentees),
          ],
          if ((userData.businessExperiences != null &&
                  userData.businessExperiences!.isNotEmpty) ||
              (userData.academicExperiences != null &&
                  userData.academicExperiences!.isNotEmpty)) ...[
            const Divider(),
            ExperienceAndEducation(
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
          ],
        ],
      ),
    );
  }
}
