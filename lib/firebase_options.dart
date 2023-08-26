// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD9HXqDT1GfkSpDdoZXCsU-kALvomI9aD4',
    appId: '1:503892488551:web:c4b4aed982886a2cddbfc2',
    messagingSenderId: '503892488551',
    projectId: 'micromentor-d72ff',
    authDomain: 'micromentor-d72ff.firebaseapp.com',
    storageBucket: 'micromentor-d72ff.appspot.com',
    measurementId: 'G-E5EE7K8C7N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCAVjigNSPVI7CUE2VKKIITCUGYX6VpWw',
    appId: '1:503892488551:android:462348e81ff821b3ddbfc2',
    messagingSenderId: '503892488551',
    projectId: 'micromentor-d72ff',
    storageBucket: 'micromentor-d72ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjwi4FxjGUkN8R0CW8JzShq1Ew-s-UUgo',
    appId: '1:503892488551:ios:4599bbc634737d7fddbfc2',
    messagingSenderId: '503892488551',
    projectId: 'micromentor-d72ff',
    storageBucket: 'micromentor-d72ff.appspot.com',
    iosBundleId: 'org.micromentor.mmFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDjwi4FxjGUkN8R0CW8JzShq1Ew-s-UUgo',
    appId: '1:503892488551:ios:708ca6c74e6166f4ddbfc2',
    messagingSenderId: '503892488551',
    projectId: 'micromentor-d72ff',
    storageBucket: 'micromentor-d72ff.appspot.com',
    iosClientId:
        '503892488551-mapcbattqfc10ogm2vu2u38kdupm2utk.apps.googleusercontent.com',
    iosBundleId: 'com.example.mmFlutterApp',
  );
}
