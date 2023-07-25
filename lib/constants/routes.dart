part of 'app_constants.dart';

class Routes {
  Routes._private();
  static const String root = '/';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String loading = '/loading';
  static const String home = '/home';
  static const String explore = '/explore';
  static const String progress = '/progress';
  static const String inbox = '/inbox';
  static const String inboxChats = '$inbox/chats';
  static const String inboxChats$ChannelId =
      '$inboxChats/:${RouteParams.channelId}';
  static const String inboxInvites = '$inbox/invites';
  static const String inboxInvitesReceived = '$inboxInvites/received';
  static const String inboxInvitesSent = '$inboxInvites/sent';
  static const String inboxArchived = '$inbox/archived';
  static const String profile = '/profile';
}

class RouteParams {
  RouteParams._private();
  static const String channelId = 'channelId';
}
