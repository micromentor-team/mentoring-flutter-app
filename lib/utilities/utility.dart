import 'package:uuid/uuid.dart';

class AppUtility {
  AppUtility._private();
  static String getDeviceUuid() {
    const uuid = Uuid();
    String deviceUuid = uuid.v1();
    return deviceUuid;
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
