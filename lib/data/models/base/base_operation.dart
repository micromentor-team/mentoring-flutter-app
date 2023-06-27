import 'package:graphql_flutter/graphql_flutter.dart';

abstract class BaseOperation<T extends BaseModel> {
  String get operation;
  String get gql;
  Map<String, dynamic>? get variables;
  OperationResult<T> transformQueryResult(QueryResult queryResult);
}

abstract class BaseModel {}

class OperationResult<T extends BaseModel> {
  T? dataModel;
  QueryResult gqlQueryResult;
  OperationResult({this.dataModel, required this.gqlQueryResult});
}
