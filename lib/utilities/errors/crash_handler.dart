import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/errors/error_widget.dart';
import 'package:mm_flutter_app/utilities/errors/errors.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:retry/retry.dart';

class CrashHandler {
  bool _isReleaseMode = false;
  bool _isCollectionEnabled = false;

  CrashHandler(bool isReleaseMode, bool isCollectionEnabled) {
    _isReleaseMode = isReleaseMode;
    _isCollectionEnabled = isCollectionEnabled;
    _initialize();
  }

  void _initialize() async {
    await Firebase.initializeApp();
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
      _isReleaseMode && _isCollectionEnabled,
    );
  }

  static Future<T> retryOnException<T>(
    FutureOr<T> Function() operation, {
    int maxAttempts = 4,
  }) {
    final RetryOptions retryOptions = RetryOptions(
      maxAttempts: maxAttempts,
    );
    return retryOptions.retry<T>(
      operation,
      retryIf: (e) => e is RetryException,
      onRetry: (e) => logCrashReport(
        'Retrying after exception: ${(e as RetryException).message}.',
      ),
    );
  }

  void handleUncaughtFlutterError(FlutterErrorDetails details) async {
    logCrashReport(
        'Application error/exception caught by FlutterError handler.');
    if (!_isReleaseMode) {
      FlutterError.presentError(details);
    }

    final Object e = details.exception;
    bool isFatalError = false;
    if (e is Exception) {
      _handleException(e);
    } else if (e is Error) {
      isFatalError = true;
      _handleError(e);
    } else {
      logCrashReport('Unknown error/exception: ${e.toString()}');
    }

    Future<void> recording = FirebaseCrashlytics.instance
        .recordFlutterError(details, fatal: isFatalError);
    if (isFatalError) {
      // Save events, reports, and other data before exiting.
      await recording;
      _exitApp();
    }
  }

  bool handleUncaughtPlatformError(Object error, StackTrace trace) {
    logCrashReport('Fatal error caught by the PlatformDispatcher handler.');
    FirebaseCrashlytics.instance.recordError(error, trace, fatal: true);
    // Return false to allow error propagation to the next handler.
    return false;
  }

  Widget handleBuildError(FlutterErrorDetails details) {
    logCrashReport('Error occurred during widget build: ${details.summary}');
    return const CustomErrorWidget();
  }

  static void logCrashReport(String message) {
    DebugLogger.error(message);
    FirebaseCrashlytics.instance.log(message);
  }

  void _handleException(Exception e) {
    if (e is AppException) {
      logCrashReport('App Exception ID ${e.exceptionId}: ${e.message}');
    } else {
      logCrashReport('Exception: ${e.toString()}');
    }
  }

  void _handleError(Error e) {
    if (e is AppError) {
      logCrashReport('App Error ID ${e.errorId}: ${e.message}');
    } else {
      logCrashReport('Error: ${e.toString()}');
    }
  }

  void _exitApp() {
    SystemNavigator.pop();
  }
}
