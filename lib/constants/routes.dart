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
  static Route selectLanguage = Route(
    name: 'selectLanguage',
    path: '/selectLanguage',
  );
  static Route signin = Route(
    name: 'signin',
    path: '/signin',
  );
  static Route signup = Route(
    name: 'signup',
    path: '/signup',
  );
  static Route signupEmail = Route(
    name: 'signupEmail',
    path: '${signup.path}/email',
  );
  static Route signupName = Route(
    name: 'signupName',
    path: '${signup.path}/name',
  );
  static Route signupPhoneNumber = Route(
    name: 'signupPhoneNumber',
    path: '${signup.path}/phoneNumber',
  );
  static Route signupPassword = Route(
    name: 'signupPassword',
    path: '${signup.path}/password',
  );
  static Route signupVerify = Route(
    name: 'signupVerify',
    path: '${signup.path}/verify',
  );
  static Route signupWelcome = Route(
    name: 'signupWelcome',
    path: '${signup.path}/welcome',
  );
  static Route signupPermissions = Route(
    name: 'signupPermissions',
    path: '${signup.path}/permissions',
  );
  static Route signupGuidelines = Route(
    name: 'signupGuidelines',
    path: '${signup.path}/guidelines',
  );
  static Route entrepreneurOrMentor = Route(
    name: 'entrepreneurOrMentor',
    path: '${signup.path}/userrole',
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
}

class RouteParams {
  RouteParams._private();
  static const String channelId = 'channelId';
  static const String channelInvitationId = 'channelInvitationId';
  static const String userId = 'userId';
}
