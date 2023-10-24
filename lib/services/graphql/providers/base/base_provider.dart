import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:retry/retry.dart';

import '../../../../utilities/debug_logger.dart';
import '../../../../utilities/errors/crash_handler.dart';
import '../../../../utilities/errors/exceptions.dart';

abstract class BaseProvider {
  static const int retryAttempts = 2;
  static const Duration retryDelayFactor = Duration(milliseconds: 500);
  final GraphQLClient client;

  BaseProvider({required this.client});

  Future<QueryResult> asyncQuery({
    required QueryOptions queryOptions,
    bool logFailures = true,
  }) async {
    const RetryOptions retryOptions = RetryOptions(
      maxAttempts: BaseProvider.retryAttempts,
      delayFactor: BaseProvider.retryDelayFactor,
    );
    QueryResult result = await client.query(queryOptions);
    if (result.hasException) {
      if (logFailures) {
        CrashHandler.logCrashReport('Exception while executing Query:'
            '\n${result.exception.toString()}\n'
            'Retrying up to ${retryOptions.maxAttempts} additional times.');
      }

      QueryResult? retryResult =
          await CrashHandler.retryOnException<QueryResult?>(
        () => _retryOperation(
          () => client.query(queryOptions),
        ),
        onFailOperation: () {
          if (logFailures) {
            DebugLogger.warning('Failed to complete Query'
                ' after ${retryOptions.maxAttempts + 1} attempts.');
          }
          return null;
        },
        retryOptions: retryOptions,
        logFailures: logFailures,
      );
      if (retryResult != null) {
        result = retryResult;
      }
    }

    return result;
  }

  Future<QueryResult> asyncMutation({
    required MutationOptions mutationOptions,
    bool logFailures = true,
  }) async {
    const RetryOptions retryOptions = RetryOptions(
      maxAttempts: BaseProvider.retryAttempts,
      delayFactor: BaseProvider.retryDelayFactor,
    );
    QueryResult result = await client.mutate(mutationOptions);
    if (result.hasException) {
      if (logFailures) {
        CrashHandler.logCrashReport('Exception while executing Mutation:'
            '\n${result.exception.toString()}\n'
            'Retrying up to ${retryOptions.maxAttempts} additional times.');
      }

      QueryResult? retryResult =
          await CrashHandler.retryOnException<QueryResult?>(
        () => _retryOperation(() => client.mutate(mutationOptions)),
        onFailOperation: () {
          if (logFailures) {
            DebugLogger.warning('Failed to complete Mutation'
                ' after ${retryOptions.maxAttempts + 1} attempts.');
          }
          return null;
        },
        retryOptions: retryOptions,
        logFailures: logFailures,
      );
      if (retryResult != null) {
        result = retryResult;
      }
    }

    return result;
  }

  Future<QueryResult> _retryOperation(
      Future<QueryResult> Function() operation) async {
    QueryResult retryResult = await operation();
    if (retryResult.hasException) {
      throw RetryException(
        message: retryResult.exception.toString(),
        originalException: retryResult.exception,
      );
    }
    return retryResult;
  }
}
