import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class GetUserProfileInfo implements BaseOperation {
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
  GetUserProfileInfoResult resultFromResponseData(Map<String, dynamic> data) {
    return GetUserProfileInfoResult.fromJson(data[operation]);
  }
}

class GetUserProfileInfoResult extends BaseResult {
  int profileCompletionPercentage;
  DateTime lastUpdateTime;

  GetUserProfileInfoResult({
    required this.profileCompletionPercentage,
    required this.lastUpdateTime,
  });

  GetUserProfileInfoResult.fromJson(Map<String, dynamic> json)
      : profileCompletionPercentage = json['profileCompletionPercentage'],
        lastUpdateTime = DateTime.parse(json['lastUpdateTime']);

  Map<String, dynamic> toJson() {
    return {
      'profileCompletionPercentage': profileCompletionPercentage,
      'lastUpdateTime': lastUpdateTime.toIso8601String(),
    };
  }
}
