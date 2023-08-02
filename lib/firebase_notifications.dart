import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mm_flutter_app/main.dart';

import 'constants/app_constants.dart';

class FirebaseNotifications {
  final _fbInstance = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    String targetRoute = message.data['routeName'];

    // Add the notification as a parameter to the root route, so it can
    // handle the notification as it wants to
    navigatorKey.currentState
        ?.pushNamed(Routes.root.name, arguments: targetRoute);
  }

  Future<void> initialize() async {
    await _fbInstance.requestPermission();

    // IOS configs for initializing push notifications
    await _fbInstance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Handling push notifications from a terminated state
    _fbInstance.getInitialMessage().then(handleMessage);

    // Handling push notifications
    // When the app is opened from a background state
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  Future<String?> getToken() async {
    final fCMToken = await _fbInstance.getToken();
    return fCMToken;
  }
}
