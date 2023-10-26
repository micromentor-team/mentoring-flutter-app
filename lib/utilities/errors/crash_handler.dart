import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:retry/retry.dart';

import '../../widgets/shared/error_widget.dart';
import '../debug_logger.dart';
import 'errors.dart';
import 'exceptions.dart';

class CrashHandler {
  bool _isReleaseMode = false;
  bool _isCollectionEnabled = false;
  static bool _isCrashlyticsSupported = false;

  CrashHandler(bool isReleaseMode, bool isCollectionEnabled) {
    _isReleaseMode = isReleaseMode;
    _isCollectionEnabled = isCollectionEnabled;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
        _isCrashlyticsSupported = true;
      default:
        break;
    }
    _initializeCrashlytics();
  }

  void _initializeCrashlytics() {
    if (_isCrashlyticsSupported) {
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
    bool logFailures = true,
  }) async {
    try {
      return await retryOptions.retry<T>(
        operation,
        retryIf: (e) => e is RetryException,
        onRetry: (e) {
          if (logFailures) {
            logCrashReport(
              'Retrying after exception: ${(e as RetryException).message}.',
            );
          }
        },
      );
    } catch (e) {
      if (e is RetryException && onFailOperation != null) {
        if (logFailures) {
          logCrashReport(
            'Maximum number of retry attempts reached: ${e.message}'
            '\nExecuting onFailOperation callback.',
          );
          sendCrashReport(exception: e);
        }
        return onFailOperation();
      }
      rethrow;
    }
  }

  void handleUncaughtFlutterError(FlutterErrorDetails details) async {
    logCrashReport(
      'Application error/exception caught by FlutterError handler.',
    );
    if (!_isReleaseMode) {
      FlutterError.presentError(details);
    }

    final Object e = details.exception;
    if (e is Exception) {
      _handleException(e);
    } else if (e is Error) {
      _handleError(e);
    } else {
      logCrashReport(
        'Unknown error/exception: ${e.toString()}',
      );
    }

    sendCrashReport(details: details, isFatal: e is Error);
  }

  bool handleUncaughtPlatformError(Object error, StackTrace trace) {
    logCrashReport('Error caught by the PlatformDispatcher handler.');
    if (error is RetryException) {
      // RetryExceptions are handled here only when thrown from retry function,
      // meaning that the operation exhausted the max number of attempts.
      logCrashReport(
        'Maximum number of retry attempts reached: ${error.message}',
      );
      return true;
    }
    sendCrashReport(exception: error, trace: trace, isFatal: error is Error);
    // Return false to allow error propagation to the next handler.
    return false;
  }

  Widget handleBuildError(FlutterErrorDetails details) {
    logCrashReport('Error occurred during widget build: ${details.summary}');
    return const CustomErrorWidget();
  }

  static void logCrashReport(String message) {
    try {
      DebugLogger.error(message);
      if (_isCrashlyticsSupported) {
        FirebaseCrashlytics.instance.log(message);
      }
    } catch (_) {
      // Do nothing if error logging fails, as we do not want the logger itself
      // to crash the app.
    }
  }

  static void sendCrashReport({
    dynamic exception,
    StackTrace? trace,
    FlutterErrorDetails? details,
    bool isFatal = false,
  }) {
    if (!_isCrashlyticsSupported) {
      return;
    }
    if (details != null) {
      FirebaseCrashlytics.instance.recordFlutterError(
        details,
        fatal: isFatal,
      );
    } else if (exception != null) {
      FirebaseCrashlytics.instance.recordError(
        exception,
        trace,
        fatal: isFatal,
      );
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
}
