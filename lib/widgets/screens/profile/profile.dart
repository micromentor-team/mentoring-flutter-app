import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/models/my_channel_invitations_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/screens/profile/about_my_business.dart';
import 'package:mm_flutter_app/widgets/screens/profile/how_can_i_help_section.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_about_me.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_basic_info.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_experience_and_education.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_page_header.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

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
  late final MyChannelInvitationsModel _myChannelInvitationsModel;
  late Future<OperationResult<UserDetailedProfile>> _userDetailedProfile;

  @override
  void initState() {
    super.initState();
    _isMyProfile = widget.userId == null;
    _userProvider = Provider.of<UserProvider>(
      context,
      listen: false,
    );
    _myChannelInvitationsModel = Provider.of<MyChannelInvitationsModel>(
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
      userId: _isMyProfile ? _authenticatedUser.id : widget.userId!,
    );
    if (!_isMyProfile) {
      _myChannelInvitationsModel.refreshReceivedInvitations(onlyPending: false);
      _myChannelInvitationsModel.refreshSentInvitations(onlyPending: false);
    }
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
            return Consumer<MyChannelInvitationsModel>(
              builder: (_, myChannelInvitationsModel, ___) {
                return AppUtility.widgetForAsyncState(
                  state: _isMyProfile
                      ? AsyncState.ready
                      : myChannelInvitationsModel.state,
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
    Key? key,
    required this.userData,
    required this.isMyProfile,
    required this.authenticatedUser,
  }) : super(key: key);

  @override
  State<ProfileScreenScroll> createState() => _ProfileScreenScrollState();
}

class _ProfileScreenScrollState extends State<ProfileScreenScroll> {
  @override
  Widget build(BuildContext context) {
    final company = widget.userData.companies.first;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (!widget.isMyProfile)
            Consumer<MyChannelInvitationsModel>(
              builder: (context, myChannelInvitationsModel, _) {
                final invitesFromUser = myChannelInvitationsModel
                    .receivedInvitations
                    .where((e) => e.sender.id == widget.userData.id)
                    .toList();
                final invitesToUser = myChannelInvitationsModel.sentInvitations
                    .where((e) => e.recipient.id == widget.userData.id)
                    .toList();
                final userId = widget.userData.id;
                final userFirstName = widget.userData.firstName ?? '';
                if (invitesFromUser.isEmpty && invitesToUser.isEmpty) {
                  // There is no connection between users
                  return ProfilePageHeader(
                    authenticatedUser: widget.authenticatedUser,
                    userId: userId,
                    userFirstName: userFirstName,
                  );
                } else if (invitesFromUser.isNotEmpty &&
                    invitesFromUser.any((e) =>
                        e.status == Enum$ChannelInvitationStatus.created)) {
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
                } else if (invitesToUser.isNotEmpty &&
                    invitesToUser.any((e) =>
                        e.status == Enum$ChannelInvitationStatus.created)) {
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
                  // Either the users are already connected, or they declined
                  return const SizedBox(width: 0, height: 0);
                }
              },
            ),
          ProfileBasicInfo(
            userType: widget.userData.offersHelp
                ? UserType.mentor
                : UserType.entrepreneur,
            fullName: widget.userData.fullName!,
            avatarUrl: widget.userData.avatarUrl,
            pronouns: "they/them", //TODO
            affiliations: const ["Verizon Digital Ready"], //TODO
            company: company.name,
            companyRole: widget.userData.jobTitle,
            education: widget.userData.educationLevel?.translatedValue,
            linkedinUrl: "https://www.linkedin.com/in/williamhgates/", //TODO
            vacationMode: true, //TODO
          ),
          const Divider(),
          ProfileAboutMe(
            cityOfResidence: widget.userData.cityOfResidence,
            countryOfResidence:
                widget.userData.countryOfResidence?.translatedValue,
            cityFrom: null, //TODO
            countryFrom: null, //TODO
            promptTitle:
                "The best piece of advice I’ve ever received is:", //TODO
            promptResponse:
                "Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies.", //TODO
            languages: widget.userData.spokenLanguages
                .map((e) => e.translatedValue)
                .nonNulls
                .toList(),
          ),
          if (widget.userData.seeksHelp) ...[
            const Divider(),
            AboutMyBusiness(
              companyInput: CompanyInput(
                name: company.name,
                website: company.websites?.first.value,
                stage: company.companyStage?.translatedValue,
                city: "Washington D.C.", //TODO
                country: "USA", //TODO
                industry: company.industries?.first,
                expertisesSought: widget.userData.groupMemberships
                    .firstWhere((g) => g.groupIdent == GroupIdent.mentees)
                    .maybeWhen(
                        menteesGroupMembership: (g) => g.soughtExpertises
                            .map((e) => e.translatedValue!)
                            .toList(),
                        orElse: () => []),
                mission: company.description,
                imageUrls: [
                  "https://st2.depositphotos.com/1326558/7163/i/600/depositphotos_71632883-stock-photo-mexican-tacos-with-meat-vegetables.jpg",
                  "https://st3.depositphotos.com/13349494/32631/i/600/depositphotos_326317470-stock-photo-cropped-view-man-adding-minced.jpg",
                ],
                motivation:
                    'Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend.', //TODO
              ),
            ),
          ],
          if (widget.userData.offersHelp) ...[
            const Divider(),
            HowCanIHelpSection(
              expertises: widget.userData.groupMemberships
                  .firstWhere((g) => g.groupIdent == GroupIdent.mentors)
                  .maybeWhen(
                    mentorsGroupMembership: (g) =>
                        g.expertises.map((e) => e.translatedValue!).toList(),
                    orElse: () => [],
                  ),
              industries: widget.userData.groupMemberships
                  .firstWhere((g) => g.groupIdent == GroupIdent.mentors)
                  .maybeWhen(
                    mentorsGroupMembership: (g) =>
                        g.industries.map((e) => e.translatedValue!).toList(),
                    orElse: () => [],
                  ),
              mentoringPreferences: const [
                "Weekly check-ins",
                "Monthly check-ins",
                "Informal chats",
                "Formal meetings",
                "Spot mentoring",
              ], //TODO
              expectations:
                  'Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend.', //TODO
            ),
          ],
          const Divider(),
          ExperienceAndEducation(
            experience: [
              ExperienceInput(
                position: "Marketing director",
                companyName: "SVK Group",
                start: DateTime.utc(2021, 12),
                location: "Cleveland, Ohio, USA",
              ),
              ExperienceInput(
                position: "Senior Marketing Manager",
                companyName: "SVK Group",
                start: DateTime.utc(2019, 6),
                end: DateTime.utc(2021, 11),
                location: "Cleveland, Ohio, USA",
              ),
              ExperienceInput(
                position: "Founder",
                companyName: "MC Consulting",
                start: DateTime.utc(2016, 3),
                end: DateTime.utc(2019, 5),
                location: "Cleveland, Ohio, USA",
                companyUrl: "https://mcconsulting.com",
              ),
            ],
            education: [
              EducationInput(
                schoolName: "Case Western Reserve University",
                start: DateTime.utc(2017),
                end: DateTime.utc(2019),
                title: "Master of Business Administration (MBA)",
              ),
              EducationInput(
                schoolName: "Ohio State University",
                start: DateTime.utc(2007),
                end: DateTime.utc(2010),
                title: "Bachelor of Arts (BA)",
                major: "Marketing and Advertising",
              ),
              EducationInput(
                schoolName: "Columbus State University College",
                start: DateTime.utc(2005),
                end: DateTime.utc(2007),
                title: "Associate of Arts (AA)",
                major: "Business",
              ),
            ],
          ), //TODO
        ],
      ),
    );
  }
}
