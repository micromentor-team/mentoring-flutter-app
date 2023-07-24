import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotifications {
  final _fbInstance = FirebaseMessaging.instance;

  Future<void> initialize() async {
    await _fbInstance.requestPermission();
  }

  Future<String?> getToken() async {
    final fCMToken = await _fbInstance.getToken();
    return fCMToken;
  }
}
