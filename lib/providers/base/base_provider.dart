import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:retry/retry.dart';

import '../../../widgets/atoms/server_error.dart';

abstract class BaseProvider extends ChangeNotifier {
  static const int retryAttempts = 2;
  static const Duration retryDelayFactor = Duration(milliseconds: 500);
  final GraphQLClient client;

  BaseProvider({required this.client});

  Widget runQuery({
    required DocumentNode document,
    Map<String, dynamic>? variables,
    required Widget Function(
      QueryResult queryResult, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
    bool logFailures = true,
  }) {
    const RetryOptions retryOptions = RetryOptions(
      maxAttempts: BaseProvider.retryAttempts,
      delayFactor: BaseProvider.retryDelayFactor,
    );
    bool isRetrying = false;
    bool isFailed = false;
    return Query(
      options: QueryOptions(
        document: document,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: variables ?? const {},
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) {
          if (isFailed) {
            final String error = result.exception.toString();
            if (onError != null) {
              return onError(
                error,
                refetch: refetch,
              );
            }
            return ServerError(error: error);
          }
          if (!isRetrying) {
            isRetrying = true;
            if (logFailures) {
              CrashHandler.logCrashReport('Exception while executing Query:'
                  '\n${result.exception.toString()}\n'
                  'Retrying up to ${retryOptions.maxAttempts} additional times.');
            }
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              CrashHandler.retryOnException<void>(
                () => _retryQuery(refetch!),
                onFailOperation: () {
                  isFailed = true;
                  if (logFailures) {
                    DebugLogger.warning('Failed to complete Query'
                        ' after ${retryOptions.maxAttempts + 1} attempts.');
                  }
                },
                retryOptions: retryOptions,
                logFailures: logFailures,
              );
            });
          }
        }

        if (result.isLoading || isRetrying) {
          if (onLoading != null) {
            return onLoading();
          }
          return const SizedBox(width: 0, height: 0);
        }

        return onData(
          result,
          refetch: refetch,
          fetchMore: fetchMore,
        );
      },
    );
  }

  void _retryQuery(Future<QueryResult<Object?>?> Function() refetch) async {
    QueryResult<Object?>? retryResult = await refetch();
    if (retryResult == null || retryResult.hasException) {
      throw RetryException(
        message: retryResult!.exception.toString(),
        originalException: retryResult.exception,
      );
    }
  }

  Future<QueryResult> runMutation(
      {required DocumentNode document,
      Map<String, dynamic>? variables,
      bool logFailures = true,
      FutureOr<void> Function(GraphQLDataProxy, QueryResult<Object?>?)?
          update}) async {
    final mutation = MutationOptions(
      document: document,
      fetchPolicy: FetchPolicy.networkOnly,
      variables: variables ?? const {},
      update: update,
    );
    const RetryOptions retryOptions = RetryOptions(
      maxAttempts: BaseProvider.retryAttempts,
      delayFactor: BaseProvider.retryDelayFactor,
    );
    QueryResult result = await client.mutate(mutation);
    if (result.hasException) {
      if (logFailures) {
        CrashHandler.logCrashReport('Exception while executing Mutation:'
            '\n${result.exception.toString()}\n'
            'Retrying up to ${retryOptions.maxAttempts} additional times.');
      }

      QueryResult? retryResult =
          await CrashHandler.retryOnException<QueryResult?>(
        () => _retryMutation(mutation),
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

  Future<QueryResult> _retryMutation(MutationOptions mutation) async {
    QueryResult retryResult = await client.mutate(mutation);
    if (retryResult.hasException) {
      throw RetryException(
        message: retryResult.exception.toString(),
        originalException: retryResult.exception,
      );
    }
    return retryResult;
  }
}
