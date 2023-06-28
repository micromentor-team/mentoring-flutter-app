import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_provider.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_api.dart';
import 'package:mm_flutter_app/schema/generated/operations.graphql.dart'
    as gql_ops;
import 'package:mm_flutter_app/schema/generated/schema.graphql.dart'
    as gql_schema;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../base/operation_result.dart';

class UserProvider extends BaseProvider {
  User? _user;

  UserProvider({required super.client});

  void _setUser(Map<String, dynamic> data) {
    if (_user == null) {
      _user = User.fromJson(data);
      debugPrint('Got this user from the server userId: ${_user!.id}');
    }
  }

  Future<void> _resetUser() async {
    _user = null;

    client.resetStore();
    // remove tokens
    final pref = await SharedPreferences.getInstance();
    pref.remove('authToken');
    pref.remove('deviceUuid');
  }

  Future<String> _setDeviceUuid() async {
    final pref = await SharedPreferences.getInstance();
    const uuid = Uuid();
    String deviceUuid = uuid.v1();
    pref.setString('deviceUuid', deviceUuid);
    return deviceUuid;
  }

  User? get user {
    return _user;
  }

  Widget queryUser({
    required Widget Function(
      OperationResult<gql_ops.Query$GetAuthenticatedUser$getAuthenticatedUser>
          data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: gql_ops.documentNodeQueryGetAuthenticatedUser,
      onData: (queryResult, {refetch, fetchMore}) {
        OperationResult<gql_ops.Query$GetAuthenticatedUser$getAuthenticatedUser>
            result = OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? gql_ops.Query$GetAuthenticatedUser.fromJson(
                  queryResult.data!,
                ).getAuthenticatedUser
              : null,
        );
        if (result.response != null) {
          _setUser(result.response!.toJson());
        } else {
          _resetUser();
        }
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget queryAllUsers({
    required Widget Function(
      OperationResult<List<gql_ops.Query$FindUsers$findUsers>> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: gql_ops.documentNodeQueryFindUsers,
      onData: (queryResult, {refetch, fetchMore}) {
        return onData(
          OperationResult(
            gqlQueryResult: queryResult,
            response: queryResult.data != null
                ? gql_ops.Query$FindUsers.fromJson(
                    queryResult.data!,
                  ).findUsers
                : null,
          ),
          refetch: refetch,
          fetchMore: fetchMore,
        );
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget queryUserProfileInfo({
    required Widget Function(
      OperationResult<gql_ops.Query$GetUserProfileInfo$getUserProfileInfo>
          data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: gql_ops.documentNodeQueryGetUserProfileInfo,
      onData: (queryResult, {refetch, fetchMore}) {
        return onData(
          OperationResult(
            gqlQueryResult: queryResult,
            response: queryResult.data != null
                ? gql_ops.Query$GetUserProfileInfo.fromJson(
                    queryResult.data!,
                  ).getUserProfileInfo
                : null,
          ),
          refetch: refetch,
          fetchMore: fetchMore,
        );
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  // Mutations
  Future<void> signUpUser(
      {required name, required email, required password}) async {
    debugPrint('UserProvider: signUpUser: $name');

    await _resetUser();
    String deviceUuid = await _setDeviceUuid();

    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kSignUpUser),
        variables: {
          'input': {
            'fullName': name,
            'email': email,
            'password': password,
            'deviceUuid': deviceUuid,
          }
        },
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );

    // debugPrint('createUser result: $result');

    if (result.data != null) {
      String authToken = result.data!['signUpUser']['authToken'];
      String userId = result.data!['signUpUser']['userId'];
      String deviceId = result.data!['signUpUser']['deviceId'];
      //
      final pref = await SharedPreferences.getInstance();
      pref.setString('userId', userId);
      pref.setString('deviceId', deviceId);
      pref.setString('authToken', authToken);

      debugPrint('userId: $userId');
      debugPrint('deviceId: $deviceId');
      debugPrint('authToken: $authToken');
    }
  }

  Future<void> signUpUserNew(
      {required name, required email, required password}) async {
    debugPrint('UserProvider: signUpUser: $name');

    await _resetUser();
    String deviceUuid = await _setDeviceUuid();

    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kSignUpUser),
        variables: {
          'input': {
            'fullName': name,
            'email': email,
            'password': password,
            'deviceUuid': deviceUuid,
          }
        },
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );

    // debugPrint('createUser result: $result');

    if (result.data != null) {
      String authToken = result.data!['signUpUser']['authToken'];
      String userId = result.data!['signUpUser']['userId'];
      String deviceId = result.data!['signUpUser']['deviceId'];
      //
      final pref = await SharedPreferences.getInstance();
      pref.setString('userId', userId);
      pref.setString('deviceId', deviceId);
      pref.setString('authToken', authToken);

      debugPrint('userId: $userId');
      debugPrint('deviceId: $deviceId');
      debugPrint('authToken: $authToken');
    }
  }

  Future<OperationResult<gql_ops.Mutation$SignInUser$signInUser>> signInUser(
    gql_schema.Input$UserSignInInput input,
  ) async {
    debugPrint('UserProvider: signInUser: ${input.ident}');

    await _resetUser();
    await _setDeviceUuid();

    QueryResult queryResult = await runMutation(
      document: gql_ops.documentNodeMutationSignInUser,
      variables: gql_ops.Variables$Mutation$SignInUser(input: input).toJson(),
    );

    OperationResult<gql_ops.Mutation$SignInUser$signInUser> result =
        OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? gql_ops.Mutation$SignInUser.fromJson(
              queryResult.data!,
            ).signInUser
          : null,
    );

    if (result.response != null) {
      final pref = await SharedPreferences.getInstance();
      pref.setString('userId', result.response!.userId);
      pref.setString('deviceId', result.response!.deviceId);
      pref.setString('authToken', result.response!.authToken);

      debugPrint('userId: ${result.response!.userId}');
      debugPrint('deviceId: ${result.response!.deviceId}');
      debugPrint('authToken: ${result.response!.authToken}');
    }

    return result;
  }

  Future<void> signOutUser() async {
    // final QueryResult result = await client.mutate(
    await client.mutate(
      MutationOptions(
        document: gql(kSignOutUser),
        onError: (error) {
          debugPrint('signOutUser error: $error');
        },
      ),
    );
    // debugPrint('signOutUser result: $result');
    _resetUser();
    notifyListeners();
  }

  Future<void> updateUserData({name, email, adminNotes}) async {
    final variables = {
      'input': {"id": user!.id}
    };
    if (name != null) {
      variables['input']!['fullName'] = name;
    }
    if (email != null) {
      variables['input']!['email'] = email;
    }
    if (adminNotes != null) {
      variables['input']!['adminNotes'] = adminNotes;
    }
    await client.query(
      QueryOptions(
        document: gql(kUpdateUser),
        variables: variables,
      ),
    );
    notifyListeners();
  }

  Future<void> deleteUser() async {
    final pref = await SharedPreferences.getInstance();
    String? userId = pref.getString('userId');

    // final QueryResult result = await client.mutate(
    await client.mutate(
      MutationOptions(
        document: gql(kDeleteUser),
        variables: {
          'userId': userId,
          'deletePhysically': true,
        },
        fetchPolicy: FetchPolicy.networkOnly,
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );
    // debugPrint('deleteUser result: $result');
    _resetUser();
    notifyListeners();
  }
}
