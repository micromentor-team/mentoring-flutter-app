import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_flutter_app/firebase_options.dart';
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
    await Firebase.initializeApp(
      name: "MicroMentor",
      options: DefaultFirebaseOptions.currentPlatform,
    );
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
        _isReleaseMode && _isCollectionEnabled,
      );
    }
  }

  static FutureOr<T> retryOnException<T>(
    FutureOr<T> Function() operation, {
    FutureOr<T> Function()? onFailOperation,
    RetryOptions retryOptions = const RetryOptions(
      maxAttempts: 4,
    ),
  }) async {
    try {
      return await retryOptions.retry<T>(
        operation,
        retryIf: (e) => e is RetryException,
        onRetry: (e) => logCrashReport(
          'Retrying after exception: ${(e as RetryException).message}.',
        ),
      );
    } catch (e) {
      if (e is RetryException && onFailOperation != null) {
        logCrashReport('Maximum number of retry attempts reached: ${e.message}'
            '\nExecuting onFailOperation callback.');
        if (!kIsWeb) {
          FirebaseCrashlytics.instance.recordError(e, null, fatal: false);
        }
        return onFailOperation();
      }
      rethrow;
    }
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

    if (!kIsWeb) {
      Future<void> recording = FirebaseCrashlytics.instance
          .recordFlutterError(details, fatal: isFatalError);
      if (isFatalError) {
        // Save events, reports, and other data before exiting.
        await recording;
        _exitApp();
      }
    }
  }

  bool handleUncaughtPlatformError(Object error, StackTrace trace) {
    logCrashReport('Error caught by the PlatformDispatcher handler.');
    if (error is RetryException) {
      // RetryExceptions are handled here only when thrown from retry function,
      // meaning that the operation exhausted the max number of attempts.
      logCrashReport(
          'Maximum number of retry attempts reached: ${error.message}');
      return true;
    }
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(error, trace, fatal: true);
    }
    // Return false to allow error propagation to the next handler.
    return false;
  }

  Widget handleBuildError(FlutterErrorDetails details) {
    logCrashReport('Error occurred during widget build: ${details.summary}');
    return const CustomErrorWidget();
  }

  static void logCrashReport(String message) {
    DebugLogger.error(message);

    if (!kIsWeb) {
      FirebaseCrashlytics.instance.log(message);
    }
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
