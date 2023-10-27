import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/constants.dart';
import '../../utilities/errors/crash_handler.dart';
import '../../utilities/utility.dart';
import './firebase_options.dart';
import 'firebase_notifications.dart';

mixin FirebaseServiceOwner {
  void onNewFirebaseTokenReceived(
    final String deviceUuid,
    final String firebaseToken,
  ) {}
}

// see: https://firebase.google.com/docs/cloud-messaging/flutter/receive
class FirebaseService with ChangeNotifier {
  StreamSubscription<String>? _tokenSubscriptionStream;
  // FirebaseApp? _firebaseApp;
  String? _firebaseToken;
  String? _deviceUuid;
  FirebaseServiceOwner? _owner;

  get deviceUuid => _deviceUuid;
  get firebaseToken => _firebaseToken;

  Future<void> init() async {
    final pref = await SharedPreferences.getInstance();
    String? deviceUuid = pref.getString('deviceUuid');
    if (deviceUuid == null) {
      deviceUuid = AppUtility.generateUuid();
      pref.setString('deviceUuid', deviceUuid);
    }
    _deviceUuid = deviceUuid;

    /*_firebaseApp =*/ await Firebase.initializeApp(
      name: Identifiers.appName,
      options: DefaultFirebaseOptions.currentPlatform,
    );

    //TODO(m-rosario): Make crash data collection opt-in.
    final CrashHandler crashHandler = CrashHandler(!kDebugMode, true);
    FlutterError.onError = crashHandler.handleUncaughtFlutterError;
    PlatformDispatcher.instance.onError =
        crashHandler.handleUncaughtPlatformError;
    ErrorWidget.builder = crashHandler.handleBuildError;

    _setTokenSubscriptionStream();

    if (!foundation.kIsWeb) {
      await FirebaseNotifications().initialize();
    }
  }

  void setOwner(FirebaseServiceOwner owner) {
    _owner = owner;
  }

  void shutDownService() {
    if (_tokenSubscriptionStream != null) {
      _tokenSubscriptionStream!.cancel();
    }
  }

  // This callback is fired at each app startup and whenever a new
  // token is generated.
  void _setTokenSubscriptionStream() {
    _tokenSubscriptionStream =
        FirebaseMessaging.instance.onTokenRefresh.listen((firebaseToken) async {
      if (firebaseToken != _firebaseToken) {
        _firebaseToken = firebaseToken;

        if (_deviceUuid == null) {
          debugPrint('Received new firebase token but have no deviceUuid.');
          return;
        }

        if (_owner == null) {
          debugPrint('Received new firebase token but have no owner.');
          return;
        }

        debugPrint('Received new firebase token: $firebaseToken');
        _owner!.onNewFirebaseTokenReceived(_deviceUuid!, firebaseToken);
      }
    });
  }
}
