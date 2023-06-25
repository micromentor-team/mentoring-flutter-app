import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:retry/retry.dart';

import '../../../widgets/atoms/server_error.dart';

abstract class BaseProvider extends ChangeNotifier {
  Widget runQuery<T extends BaseResult>({
    required BaseOperation operation,
    required Widget Function(T? data, void Function()? refetch) onData,
    Widget Function()? onLoading,
    Widget Function(String error, void Function()? refetch)? onError,
  }) {
    const RetryOptions retryOptions = RetryOptions(
      maxAttempts: 2,
      delayFactor: Duration(milliseconds: 500),
    );
    bool isRetrying = false;
    bool isFailed = false;
    return Query(
      options: QueryOptions(
        document: gql(operation.gql),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: operation.variables ?? const {},
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) {
          if (isFailed) {
            final String error = result.exception.toString();
            if (onError != null) {
              return onError(error, refetch != null ? () => refetch() : null);
            }
            return ServerError(error: error);
          }
          if (!isRetrying) {
            isRetrying = true;
            CrashHandler.logCrashReport(
                'Exception while executing Query `${operation.operation}`:'
                '\n${result.exception.toString()}\n'
                'Retrying up to ${retryOptions.maxAttempts} additional times.');
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              CrashHandler.retryOnException<void>(
                () => _retryQuery(refetch!),
                onFailOperation: () {
                  isFailed = true;
                  DebugLogger.warning(
                      'Failed to complete Query `${operation.operation}`'
                      ' after ${retryOptions.maxAttempts + 1} attempts.');
                },
                retryOptions: retryOptions,
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

        if (result.data == null) {
          return onData(null, null);
        }

        return onData(
          operation.resultFromResponseData(result.data!) as T,
          refetch != null ? () => refetch() : null,
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
}
