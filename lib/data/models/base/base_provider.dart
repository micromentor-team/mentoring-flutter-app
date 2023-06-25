import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';

import '../../../widgets/atoms/server_error.dart';

abstract class BaseProvider extends ChangeNotifier {
  Widget runQuery<T extends BaseResult>({
    required BaseOperation operation,
    required Widget Function(T?) onData,
    Widget Function()? onLoading,
    Widget Function(String)? onError,
  }) {
    return Query(
      options: QueryOptions(
        document: gql(operation.gql),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: operation.variables ?? const {},
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) {
          final String error = result.exception.toString();

          if (onError != null) {
            return onError(error);
          }
          return ServerError(error: error);
        }

        if (result.isLoading) {
          if (onLoading != null) {
            return onLoading();
          }
          return const SizedBox(width: 0, height: 0);
        }
        if (result.data == null) {
          return onData(null);
        }
        return onData(operation.resultFromResponseData(result.data!) as T);
      },
    );
  }
}
