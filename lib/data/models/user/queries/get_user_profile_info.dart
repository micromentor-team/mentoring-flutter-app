import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class GetUserProfileInfo implements BaseOperation<GetUserProfileInfoModel> {
  @override
  String get operation => 'getUserProfileInfo';

  @override
  String get gql => """
  query Q {
    getUserProfileInfo(){
      profileCompletionPercentage
      lastUpdateTime
    }
  }
""";

  @override
  Map<String, dynamic>? get variables => null;

  @override
  OperationResult<GetUserProfileInfoModel> transformQueryResult(
      QueryResult queryResult) {
    return OperationResult(
      dataModel: queryResult.data != null
          ? GetUserProfileInfoModel._fromJson(queryResult.data![operation])
          : null,
      gqlQueryResult: queryResult,
    );
  }
}

class GetUserProfileInfoModel extends BaseModel {
  int profileCompletionPercentage;
  DateTime lastUpdateTime;

  GetUserProfileInfoModel._fromJson(Map<String, dynamic> json)
      : profileCompletionPercentage = json['profileCompletionPercentage'],
        lastUpdateTime = DateTime.parse(json['lastUpdateTime']);

  Map<String, dynamic> toJson() {
    return {
      'profileCompletionPercentage': profileCompletionPercentage,
      'lastUpdateTime': lastUpdateTime.toIso8601String(),
    };
  }
}
