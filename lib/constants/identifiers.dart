part of 'app_constants.dart';

class Identifiers {
  Identifiers._private();
  static const String appName = 'MicroMentor';
}

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
  static const String inboxInvites = '$inbox/invites';
  static const String inboxArchived = '$inbox/archived';
  static const String profile = '/profile';
}
