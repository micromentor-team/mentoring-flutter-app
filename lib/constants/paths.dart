part of 'app_constants.dart';

class Assets {
  Assets._private();
  static const String brandLogo = "assets/images/MicroMentor.png";
  static const String blankAvatar = 'assets/images/blank-avatar.png';
  static const String reminderBannerStockImage =
      "assets/images/StockImage1.png";
  static const String resourceWebinarStockImage =
      "assets/images/StockImage2.jpeg";
  static const String resourceTrainingStockImage =
      "assets/images/StockImage3.jpeg";
  static const String resourceBlogsStockImage =
      "assets/images/StockImage4.jpeg";
  static const String googleIcon = "assets/images/google.png";
  static const String facebookIcon = "assets/images/facebook.png";
  static const String linkedInIcon = "assets/images/linkedin.png";
  static const String whatsappIcon = "assets/images/whatsapp.png";
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
  static const String inboxInvitesReceived = '$inboxInvites/received';
  static const String inboxInvitesSent = '$inboxInvites/sent';
  static const String inboxArchived = '$inbox/archived';
  static const String profile = '/profile';
}
