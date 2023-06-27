import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class GetAuthenticatedUser implements BaseOperation<GetAuthenticatedUserModel> {
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
  OperationResult<GetAuthenticatedUserModel> transformQueryResult(
      QueryResult queryResult) {
    return OperationResult(
      model: queryResult.data != null
          ? GetAuthenticatedUserModel._fromJson(queryResult.data![operation])
          : null,
      gqlQueryResult: queryResult,
    );
  }
}

class GetAuthenticatedUserModel extends BaseModel {
  String id;
  String? email;
  String? fullName;
  String? avatarUrl;
  String userHandle;

  GetAuthenticatedUserModel._fromJson(Map<String, dynamic> json)
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
