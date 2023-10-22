part of 'app_constants.dart';

class Route {
  final String name;
  final String path;

  Route({required this.name, required this.path});
}

class Routes {
  Routes._private();
  static Route root = Route(
    name: 'root',
    path: '/',
  );
  static Route welcome = Route(
    name: 'welcome',
    path: '/welcome',
  );
  static Route signin = Route(
    name: 'signin',
    path: '/signin',
  );
  static Route signup = Route(
    name: 'signup',
    path: '/signup',
  );
  static Route signupCredentials = Route(
    name: 'signupCredentials',
    path: '${signup.path}/signupCredentials',
  );
  static Route signupPhone = Route(
    name: 'signupPhone',
    path: '${signup.path}/phone',
  );
  static Route signupBirthYear = Route(
    name: 'signupYearOfBirth',
    path: '${signup.path}/birthYear',
  );
  static Route signupGender = Route(
    name: 'signupGender',
    path: '${signup.path}/gender',
  );
  static Route signupLocation = Route(
    name: 'signupLocation',
    path: '${signup.path}/location',
  );
  static Route signupLanguage = Route(
    name: 'signupLanguage',
    path: '${signup.path}/language',
  );
  static Route signupGroupMembership = Route(
    name: 'signupGroupMembership',
    path: '${signup.path}/groupMembership',
  );
  static Route signupEntrepreneurCompanyStage = Route(
    name: 'signupEntrepreneurCompanyStage',
    path: '${signup.path}/entrepreneurCompanyStage',
  );
  static Route signupExpertises = Route(
    name: 'signupExpertises',
    path: '${signup.path}/expertises',
  );
  static Route signupEntrepreneurCompanyName = Route(
    name: 'signupEntrepreneurCompanyName',
    path: '${signup.path}/entrepreneurCompanyName',
  );
  static Route signupReason = Route(
    name: 'signupReason',
    path: '${signup.path}/reason',
  );
  static Route signupCompleted = Route(
    name: 'signupCompleted',
    path: '${signup.path}/completed',
  );
  static Route signupMentorRole = Route(
    name: 'signupMentorRole',
    path: '${signup.path}/mentorRole',
  );
  static Route loading = Route(
    name: 'loading',
    path: '/loading',
  );
  static Route home = Route(
    name: 'home',
    path: '/home',
  );
  static Route explore = Route(
    name: 'explore',
    path: '/explore',
  );
  static Route exploreFilters = Route(
    name: 'exploreFilters',
    path: '${explore.path}/filters',
  );
  static Route exploreFiltersAdvanced = Route(
    name: 'exploreFiltersAdvanced',
    path: '${exploreFilters.path}/advanced',
  );
  static Route inbox = Route(
    name: 'inbox',
    path: '/inbox',
  );
  static Route inboxChats = Route(
    name: 'inboxChats',
    path: '${inbox.path}/chats',
  );
  static Route inboxChatsChannelId = Route(
    name: 'inboxChatsChannelId',
    path: '${inboxChats.path}/:${RouteParams.channelId}',
  );
  static Route inboxInvites = Route(
    name: 'inboxInvites',
    path: '${inbox.path}/invites',
  );
  static Route inboxInvitesReceived = Route(
    name: 'inboxInvitesReceived',
    path: '${inboxInvites.path}/received',
  );
  static Route inboxInvitesReceivedId = Route(
    name: 'inboxInvitesReceivedId',
    path: '${inboxInvitesReceived.path}/:${RouteParams.channelInvitationId}',
  );
  static Route inboxInvitesSent = Route(
    name: 'inboxInvitesSent',
    path: '${inboxInvites.path}/sent',
  );
  static Route inboxInvitesSentId = Route(
    name: 'inboxInvitesSentId',
    path: '${inboxInvitesSent.path}/:${RouteParams.channelInvitationId}',
  );
  static Route inboxArchived = Route(
    name: 'inboxArchived',
    path: '${inbox.path}/archived',
  );
  static Route inboxArchivedChannelId = Route(
    name: 'inboxArchivedChannelId',
    path: '${inboxArchived.path}/:${RouteParams.channelId}',
  );
  static Route profile = Route(
    name: 'profile',
    path: '/profile',
  );
  static Route profileId = Route(
    name: 'profileId',
    path: '${profile.path}/:${RouteParams.userId}',
  );
  static Route profileInvite = Route(
    name: 'profileInvite',
    path: '${profile.path}/invite',
  );
  static Route profileInviteId = Route(
    name: 'profileInviteId',
    path: '${profileInvite.path}/:${RouteParams.userId}',
  );
  static Route profileEdit = Route(
    name: 'profileEdit',
    path: '${profile.path}/edit',
  );
  static Route profileEditPronouns = Route(
    name: 'profileEditPronouns',
    path: '${profileEdit.path}/pronouns',
  );
  static Route profileEditLinkedin = Route(
    name: 'profileEditLinkedin',
    path: '${profileEdit.path}/linkedin',
  );
  static Route profileEditCurrentLocation = Route(
    name: 'profileEditCity',
    path: '${profileEdit.path}/city',
  );
  static Route profileEditOriginLocation = Route(
    name: 'profileEditOriginLocation',
    path: '${profileEdit.path}/originLocation',
  );
  static Route profileEditLanguagePreferred = Route(
    name: 'profileEditLanguagePreferred',
    path: '${profileEdit.path}/preferredLanguage',
  );
  static Route profileEditLanguageOthers = Route(
    name: 'profileEditLanguageOthers',
    path: '${profileEdit.path}/otherLanguages',
  );
  static Route profileEditPrompt = Route(
    name: 'profileEditPrompt',
    path: '${profileEdit.path}/prompt',
  );
  static Route profileEditEducation = Route(
    name: 'profileEditEducation',
    path: '${profileEdit.path}/education',
  );
  static Route profileEditEducationNew = Route(
    name: 'profileEditEducationNew',
    path: '${profileEdit.path}/newEducation',
  );
  static Route profileEditExperience = Route(
    name: 'profileEditExperience',
    path: '${profileEdit.path}/experience',
  );
  static Route profileEditExperienceNew = Route(
    name: 'profileEditExperienceNew',
    path: '${profileEdit.path}/newExperience',
  );
  static Route profileEditExpertisesTop = Route(
    name: 'profileEditExpertisesTop',
    path: '${profileEdit.path}/topExpertises',
  );
  static Route profileEditExpertisesAdditional = Route(
    name: 'profileEditExpertisesAdditional',
    path: '${profileEdit.path}/additionalExpertises',
  );
  static Route profileEditIndustries = Route(
    name: 'profileEditIndustries',
    path: '${profileEdit.path}/industries',
  );
  static Route profileEditMentoringPreferences = Route(
    name: 'profileEditMentoringPreferences',
    path: '${profileEdit.path}/mentoringPreferences',
  );
  static Route profileEditCompanyStage = Route(
    name: 'profileEditCompanyStage',
    path: '${profileEdit.path}/companyStage',
  );
}

class RouteParams {
  RouteParams._private();
  static const String channelId = 'channelId';
  static const String channelInvitationId = 'channelInvitationId';
  static const String userId = 'userId';
  static const String nextRouteName = 'nextRouteName';
}
