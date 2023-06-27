abstract class BaseOperation {
  String get operation;
  String get gql;
  Map<String, dynamic>? get variables;
  BaseResult resultFromResponseData(Map<String, dynamic> data);
}

abstract class BaseResult {}
