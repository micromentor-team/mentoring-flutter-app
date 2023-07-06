import 'package:uuid/uuid.dart';

class AppUtility {
  AppUtility._private();
  static String getUuid() {
    return const Uuid().v1();
  }

  static String getUserInitials(String fullName) {
    return fullName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }
}
