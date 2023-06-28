import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../__generated/schema/operations.graphql.dart';
import '../../../__generated/schema/schema.graphql.dart';
import '../base/operation_result.dart';

class UserProvider extends BaseProvider {
  Query$GetAuthenticatedUser$getAuthenticatedUser? _user;

  UserProvider({required super.client});

  void _setUser(
      Query$GetAuthenticatedUser$getAuthenticatedUser authenticatedUser) {
    if (_user == null) {
      _user = authenticatedUser;
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
    final deviceUuid = AppUtility.getDeviceUuid();
    pref.setString('deviceUuid', deviceUuid);
    return deviceUuid;
  }

  Query$GetAuthenticatedUser$getAuthenticatedUser? get user {
    return _user;
  }

  Widget queryUser({
    required Widget Function(
      OperationResult<Query$GetAuthenticatedUser$getAuthenticatedUser> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryGetAuthenticatedUser,
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<Query$GetAuthenticatedUser$getAuthenticatedUser>
            result = OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$GetAuthenticatedUser.fromJson(
                  queryResult.data!,
                ).getAuthenticatedUser
              : null,
        );
        if (result.response != null) {
          _setUser(result.response!);
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
      OperationResult<List<Query$FindUsers$findUsers>> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryFindUsers,
      onData: (queryResult, {refetch, fetchMore}) {
        return onData(
          OperationResult(
            gqlQueryResult: queryResult,
            response: queryResult.data != null
                ? Query$FindUsers.fromJson(
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
      OperationResult<Query$GetUserProfileInfo$getUserProfileInfo> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryGetUserProfileInfo,
      onData: (queryResult, {refetch, fetchMore}) {
        return onData(
          OperationResult(
            gqlQueryResult: queryResult,
            response: queryResult.data != null
                ? Query$GetUserProfileInfo.fromJson(
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
  Future<OperationResult<Mutation$SignUpUser$signUpUser>> signUpUser(
      Input$UserSignUpInput input) async {
    debugPrint('UserProvider: signUpUser: ${input.fullName}');

    await _resetUser();
    await _setDeviceUuid();

    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationSignUpUser,
      variables: Variables$Mutation$SignUpUser(input: input).toJson(),
    );

    final OperationResult<Mutation$SignUpUser$signUpUser> result =
        OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$SignUpUser.fromJson(
              queryResult.data!,
            ).signUpUser
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

  Future<OperationResult<Mutation$SignInUser$signInUser>> signInUser(
    Input$UserSignInInput input,
  ) async {
    debugPrint('UserProvider: signInUser: ${input.ident}');

    await _resetUser();
    await _setDeviceUuid();

    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationSignInUser,
      variables: Variables$Mutation$SignInUser(input: input).toJson(),
    );

    final OperationResult<Mutation$SignInUser$signInUser> result =
        OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$SignInUser.fromJson(
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

  Future<OperationResult<void>> signOutUser() async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationSignOutUser,
    );

    final OperationResult<void> result = OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
    _resetUser();
    notifyListeners();
    return result;
  }

  Future<OperationResult<void>> updateUserData(Input$UserInput input) async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationUpdateUser,
      variables: Variables$Mutation$UpdateUser(input: input).toJson(),
    );

    final OperationResult<void> result = OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
    notifyListeners();
    return result;
  }

  Future<OperationResult<void>> deleteUser() async {
    final pref = await SharedPreferences.getInstance();
    String? userId = pref.getString('userId');

    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationUpdateUser,
      variables: Variables$Mutation$DeleteUser(
        userId: userId!,
        deletePhysically: true,
      ).toJson(),
    );

    final OperationResult<void> result = OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
    _resetUser();
    notifyListeners();
    return result;
  }
}
