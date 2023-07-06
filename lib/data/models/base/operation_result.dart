import 'package:graphql_flutter/graphql_flutter.dart';

class OperationResult<R> {
  R? response;
  QueryResult gqlQueryResult;
  OperationResult({this.response, required this.gqlQueryResult});
}
