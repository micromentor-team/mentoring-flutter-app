import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/main.dart';

import 'constants/app_constants.dart';

class FirebaseNotifications {
  final _fbInstance = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    String? targetRoute = message.data['routeName'];

    // Pass the nextRoute as query parameter to the root route.
    navigatorKey.currentState?.context.goNamed(
      Routes.root.name,
      queryParameters: {RouteParams.nextRouteName: targetRoute},
    );
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
