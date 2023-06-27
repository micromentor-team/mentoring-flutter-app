import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class SignInUser implements BaseOperation<SignInUserModel> {
  final SignInUserInput input;

  SignInUser({
    required this.input,
  });

  @override
  String get gql => """
  mutation M (\$input: UserSignInInput!) {
    signInUser(input: \$input) {
      userId
      deviceId
      authToken
    }
  }
""";

  @override
  String get operation => 'signInUser';

  @override
  Map<String, dynamic>? get variables => {
        'input': input.toJson(),
      };

  @override
  OperationResult<SignInUserModel> transformQueryResult(
      QueryResult queryResult) {
    return OperationResult(
      dataModel: queryResult.data != null
          ? SignInUserModel._fromJson(queryResult.data![operation])
          : null,
      gqlQueryResult: queryResult,
    );
  }
}

class SignInUserInput {
  final String deviceUuid;
  final String ident;
  final String identType;
  final String password;

  SignInUserInput({
    required this.deviceUuid,
    required this.ident,
    required this.identType,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'deviceUuid': deviceUuid,
      'ident': ident,
      'identType': identType,
      'password': password,
    };
  }
}

class SignInUserModel extends BaseModel {
  final String userId;
  final String deviceId;
  final String authToken;

  SignInUserModel._fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        deviceId = json['deviceId'],
        authToken = json['authToken'];

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'deviceId': deviceId,
      'authToken': authToken,
    };
  }
}
