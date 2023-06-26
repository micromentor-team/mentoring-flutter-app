import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class GetAuthenticatedUser implements BaseOperation {
  @override
  String get operation => 'getAuthenticatedUser';

  @override
  String get gql => """
  query Q {
    getAuthenticatedUser {
      id
      email
      fullName
      avatarUrl
      userHandle
    }
  }
""";

  @override
  Map<String, dynamic>? get variables => null;

  @override
  GetAuthenticatedUserResult resultFromResponseData(Map<String, dynamic> data) {
    return GetAuthenticatedUserResult.fromJson(data[operation]);
  }
}

class GetAuthenticatedUserResult extends BaseResult {
  String id;
  String? email;
  String? fullName;
  String? avatarUrl;
  String userHandle;

  GetAuthenticatedUserResult({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    required this.userHandle,
  });

  GetAuthenticatedUserResult.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        fullName = json['fullName'],
        avatarUrl = json['avatarUrl'],
        userHandle = json['userHandle'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'fullName': fullName,
      'avatarUrl': avatarUrl,
      'userHandle': userHandle,
    };
  }
}
