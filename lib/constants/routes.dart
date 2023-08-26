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
  static Route exploreInviteToConnect = Route(
    name: 'exploreInviteToConnect',
    path: '${explore.path}/connect',
  );
  static Route exploreFilters = Route(
    name: 'exploreFilters',
    path: '${explore.path}/filters',
  );
  static Route exploreFiltersAdvanced = Route(
    name: 'exploreFiltersAdvanced',
    path: '${exploreFilters.path}/advanced',
  );
  static Route progress = Route(
    name: 'progress',
    path: '/progress',
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
}

class RouteParams {
  RouteParams._private();
  static const String channelId = 'channelId';
  static const String channelInvitationId = 'channelInvitationId';
}
