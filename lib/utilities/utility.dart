import 'package:uuid/uuid.dart';

class AppUtility {
  static String getDeviceUuid() {
    const uuid = Uuid();
    String deviceUuid = uuid.v1();
    return deviceUuid;
  }
}
