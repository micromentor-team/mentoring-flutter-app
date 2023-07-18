import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/providers/base/base_provider.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import '../../../__generated/schema/schema.graphql.dart';

typedef AuthenticatedUser = Query$GetAuthenticatedUser$getAuthenticatedUser;

class UserMockProvider extends BaseProvider {
  AuthenticatedUser? _user;

  UserMockProvider({required client}) : super(client: client);

  void _setUser(AuthenticatedUser authenticatedUser) {
    if (_user == null) {
      _user = authenticatedUser;
      debugPrint('Got this user from the server userId: ${_user!.id}');
    }
  }

  // Future<void> _resetUser() async {
  //   _user = null;

  //   client.resetStore();
  //   // remove tokens
  //   final pref = await SharedPreferences.getInstance();
  //   pref.remove('authToken');
  //   pref.remove('deviceUuid');
  // }

  // Future<String> _setDeviceUuid() async {
  //   final pref = await SharedPreferences.getInstance();
  //   final deviceUuid = AppUtility.getUuid();
  //   pref.setString('deviceUuid', deviceUuid);
  //   return deviceUuid;
  // }

  AuthenticatedUser? get user {
    return _user;
  }

  void setMockUser(AuthenticatedUser user) {
    _setUser(user);
  }

  Widget queryUser({
    required Widget Function(
      OperationResult<Query$GetAuthenticatedUser$getAuthenticatedUser> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
    bool logFailures = true,
  }) {
    // Implement mock behavior for queryUser
    final mockResult =
        OperationResult<Query$GetAuthenticatedUser$getAuthenticatedUser>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: QueryOptions(document: documentNodeQueryGetAuthenticatedUser),
      ),
      response: _user,
    );
    return onData(mockResult);
  }

  Widget queryAllUsers({
    required Widget Function(
      OperationResult<List<Query$FindAllUsers$findUsers>> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    final List<Query$FindAllUsers$findUsers> mockData = [
      Query$FindAllUsers$findUsers(
        id: '640abd97587f51d992676942',
        email: 'foxmccloud@example.com',
        fullName: 'Fox McCloud',
        avatarUrl: 'https://randomuser.me/api/portraits/med/men/18.jpg',
        userHandle: 'fox',
      ),
      Query$FindAllUsers$findUsers(
        id: '640acf9055942518a6cdca38',
        email: 'slippytoad@example.com',
        fullName: 'Slippy Toad',
        avatarUrl: 'https://randomuser.me/api/portraits/med/men/78.jpg',
        userHandle: 'slippy',
      ),
      Query$FindAllUsers$findUsers(
        id: '640acfd255942518a6cdca3b',
        email: 'peppyhare@example.com',
        fullName: 'Peppy Hare',
        avatarUrl: 'https://randomuser.me/api/portraits/med/men/75.jpg',
        userHandle: 'peppy',
      ),
      Query$FindAllUsers$findUsers(
        id: '640ad02455942518a6cdca3e',
        email: 'falcolombardi@example.com',
        fullName: 'Falco Lombardi',
        avatarUrl: 'https://randomuser.me/api/portraits/med/men/68.jpg',
        userHandle: 'falco',
      ),
    ];

    final mockResult = OperationResult<List<Query$FindAllUsers$findUsers>>(
      gqlQueryResult: QueryResult(
        data: {'data': mockData},
        source: QueryResultSource.network,
        options: QueryOptions(document: documentNodeQueryFindAllUsers),
      ),
      response: mockData,
    );
    return onData(mockResult);
  }

  Widget findUsersWithFilter(
    Input$UserListFilter input, {
    required Widget Function(
      OperationResult<List<Query$FindUsersWithFilter$findUsers>> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    final mockResult =
        OperationResult<List<Query$FindUsersWithFilter$findUsers>>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: QueryOptions(document: documentNodeQueryFindUsersWithFilter),
      ),
      response: [],
    );
    return onData(mockResult);
  }

  Future<OperationResult<Mutation$SignUpUser$signUpUser>> signUpUser(
      Input$UserSignUpInput input) async {
    final mockResult = OperationResult<Mutation$SignUpUser$signUpUser>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: MutationOptions(document: documentNodeMutationSignUpUser),
      ),
      response: null,
    );
    return mockResult;
  }

  Future<OperationResult<Mutation$SignInUser$signInUser>> signInUser(
    Input$UserSignInInput input,
  ) async {
    final mockResult = OperationResult<Mutation$SignInUser$signInUser>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: MutationOptions(document: documentNodeMutationSignInUser),
      ),
      response: null,
    );
    return mockResult;
  }

  Future<OperationResult<void>> signOutUser() async {
    final mockResult = OperationResult<void>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: MutationOptions(document: documentNodeMutationSignOutUser),
      ),
      response: null,
    );
    return mockResult;
  }

  Future<OperationResult<void>> updateUserData(Input$UserInput input) async {
    final mockResult = OperationResult<void>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: MutationOptions(document: documentNodeMutationUpdateUser),
      ),
      response: null,
    );
    return mockResult;
  }

  Future<OperationResult<void>> deleteUser() async {
    final mockResult = OperationResult<void>(
      gqlQueryResult: QueryResult(
        data: {'data': ''},
        source: QueryResultSource.network,
        options: MutationOptions(document: documentNodeMutationDeleteUser),
      ),
      response: null,
    );
    return mockResult;
  }
}
