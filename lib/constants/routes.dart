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
  static Route profileEdit = Route(
    name: 'profileEdit',
    path: '${profile.path}/edit',
  );
  static Route editPronouns = Route(
    name: 'editPronouns',
    path: '/pronouns',
  );
  static Route editLinkedin = Route(
    name: 'editLinkedin',
    path: '/linkedin',
  );
  static Route editCity = Route(
    name: 'editCity',
    path: '/city',
  );
  static Route editOriginLocation = Route(
    name: 'editOriginLocation',
    path: '/originLocation',
  );
  static Route editPreferredLanguage = Route(
    name: 'editPreferredLanguage',
    path: '/preferredLanguage',
  );
  static Route editOtherLanguages = Route(
    name: 'editOtherLanguages',
    path: '/otherLanguages',
  );
  static Route editPrompt = Route(
    name: 'editPrompt',
    path: '/prompt',
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
}

class RouteParams {
  RouteParams._private();
  static const String channelId = 'channelId';
  static const String channelInvitationId = 'channelInvitationId';
  static const String userId = 'userId';
  static const String nextRouteName = 'nextRouteName';
}
