import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../__generated/schema/operations_user.graphql.dart';
import '../__generated/schema/schema.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef AuthenticatedUser = Query$GetAuthenticatedUser$getAuthenticatedUser;

typedef MentorUserDetailedProfile
    = Query$FindMentorUserDetailedProfile$findUserById;
typedef MenteeUserDetailedProfile
    = Query$FindMenteeUserDetailedProfile$findUserById;
typedef UserDetailedProfile = Query$FindUserDetailedProfile$findUserById;
typedef UserQuickViewProfile = Query$FindUserQuickViewProfile$findUserById;
// findAllUsers queries
typedef UserWithFilterResult = Query$FindUsersWithFilter$findUsers;
typedef MenteeUser = Query$FindMenteeUsers$findUsers;
typedef MentorUser = Query$FindMentorUsers$findUsers;

// UserSearch queries and mutation
typedef CreateUserSearchResponse = Mutation$CreateUserSearch$createUserSearch;
typedef UserSearch = Query$FindUserSearch$findUserSearchById;
typedef TopFoundUser = Query$FindUserSearch$findUserSearchById$topFoundUsers;

class UserProvider extends BaseProvider with ChangeNotifier {
  AuthenticatedUser? _user;

  UserProvider({required super.client});

  void _setUser(AuthenticatedUser authenticatedUser) {
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

  /// @param overrideUuid - if true, the newDeviceUuid will overwrite any existing uuid
  Future<String> _setDeviceUuid() async {
    final pref = await SharedPreferences.getInstance();
    final uuid = await AppUtility.getUuid();
    pref.setString('deviceUuid', uuid);
    return uuid;
  }

  AuthenticatedUser? get user {
    return _user;
  }
  
  // userSearch mutation
  Future<OperationResult<CreateUserSearchResponse>> createUserSearch({
    required Input$UserSearchInput searchInput,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationCreateUserSearch,
        fetchPolicy: fetchFromNetworkOnly
            // use cache to prevent executing the same searches multiple times
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables:
            Variables$Mutation$CreateUserSearch(input: searchInput).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$CreateUserSearch.fromJson(
              queryResult.data!,
            ).createUserSearch
          : null,
    );
  }

  // userSearch queries

  Future<OperationResult<UserSearch>> getUserSearch({
    required String userSearchId,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindUserSearch,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables:
            Variables$Query$FindUserSearch(userSearchId: userSearchId).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindUserSearch.fromJson(
              queryResult.data!,
            ).findUserSearchById
          : null,
    );
  }

  Future<OperationResult<List<MenteeUser>>> findMenteeUsers({
    required Input$FindObjectsOptions optionsInput,
    required Input$UserListFilter filterInput,
    required Input$UserInput matchInput,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindMenteeUsers,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindMenteeUsers(
                filter: filterInput, options: optionsInput, match: matchInput)
            .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindMenteeUsers.fromJson(
              queryResult.data!,
            ).findUsers.map((element) {
              if (element.avatarUrl == "") {
                return element.copyWith(avatarUrl: null);
              }
              return element;
            }).toList()
          : null,
    );
  }

  Future<OperationResult<List<MentorUser>>> findMentorUsers({
    required Input$FindObjectsOptions optionsInput,
    required Input$UserListFilter filterInput,
    required Input$UserInput matchInput,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindMentorUsers,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindMentorUsers(
                filter: filterInput, options: optionsInput, match: matchInput)
            .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindMentorUsers.fromJson(
              queryResult.data!,
            ).findUsers.map((element) {
              if (element.avatarUrl == "") {
                return element.copyWith(avatarUrl: null);
              }
              return element;
            }).toList()
          : null,
    );
  }

  Future<OperationResult<MenteeUserDetailedProfile>>
      findMenteeUserDetailedProfile({
    required String userId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindMenteeUserDetailedProfile,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindMenteeUserDetailedProfile(
          id: userId,
        ).toJson(),
      ),
    );

    final operationResult = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data == null
          ? null
          : Query$FindMenteeUserDetailedProfile.fromJson(
              queryResult.data!,
            ).findUserById,
    );
    if (operationResult.response?.avatarUrl == "") {
      operationResult.response = operationResult.response!.copyWith(
        avatarUrl: null,
      );
    }
    return operationResult;
  }

  Future<OperationResult<MentorUserDetailedProfile>>
      findMentorUserDetailedProfile({
    required String userId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindMentorUserDetailedProfile,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindMentorUserDetailedProfile(
          id: userId,
        ).toJson(),
      ),
    );

    final operationResult = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data == null
          ? null
          : Query$FindMentorUserDetailedProfile.fromJson(
              queryResult.data!,
            ).findUserById,
    );
    if (operationResult.response?.avatarUrl == "") {
      operationResult.response = operationResult.response!.copyWith(
        avatarUrl: null,
      );
    }
    return operationResult;
  }

  Future<OperationResult<UserDetailedProfile>> findUserDetailedProfile({
    required String userId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindUserDetailedProfile,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindUserDetailedProfile(
          userId: userId,
        ).toJson(),
      ),
    );

    final operationResult = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data == null
          ? null
          : Query$FindUserDetailedProfile.fromJson(
              queryResult.data!,
            ).findUserById,
    );
    if (operationResult.response?.avatarUrl == "") {
      operationResult.response = operationResult.response!.copyWith(
        avatarUrl: null,
      );
    }
    return operationResult;
  }

  Future<OperationResult<UserQuickViewProfile>> findUserQuickViewProfile({
    required String userId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindUserQuickViewProfile,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindUserQuickViewProfile(
          userId: userId,
        ).toJson(),
      ),
    );

    final operationResult = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data == null
          ? null
          : Query$FindUserQuickViewProfile.fromJson(
              queryResult.data!,
            ).findUserById,
    );
    if (operationResult.response?.avatarUrl == "") {
      operationResult.response = operationResult.response!.copyWith(
        avatarUrl: null,
      );
    }
    return operationResult;
  }

  Future<OperationResult<List<UserWithFilterResult>>> findUsersWithFilter({
    required Input$UserListFilter input,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindUsersWithFilter,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindUsersWithFilter(filter: input).toJson(),
      ),
    );

    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data == null
          ? null
          : Query$FindUsersWithFilter.fromJson(
              queryResult.data!,
            ).findUsers.map((element) {
              if (element.avatarUrl == "") {
                return element.copyWith(avatarUrl: null);
              }
              return element;
            }).toList(),
    );
  }

  Future<OperationResult<AuthenticatedUser>> getAuthenticatedUser({
    bool logFailures = true,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryGetAuthenticatedUser,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
      logFailures: logFailures,
    );
    final operationResult = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$GetAuthenticatedUser.fromJson(
              queryResult.data!,
            ).getAuthenticatedUser
          : null,
    );
    if (operationResult.response?.avatarUrl == "") {
      operationResult.response = operationResult.response!.copyWith(
        avatarUrl: null,
      );
    }
    if (operationResult.response != null) {
      _setUser(operationResult.response!);
    } else {
      _resetUser();
    }
    return operationResult;
  }

  // Mutations
  Future<OperationResult<Mutation$SignUpUser$signUpUser>> signUpUser({
    required Input$UserSignUpInput input,
  }) async {
    debugPrint('UserProvider: signUpUser: ${input.fullName}');

    await _resetUser();
    await _setDeviceUuid();

    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationSignUpUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SignUpUser(input: input).toJson(),
      ),
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

  Future<OperationResult<Mutation$SignInUser$signInUser>> signInUser({
    required Input$UserSignInInput input,
  }) async {
    debugPrint('UserProvider: signInUser: ${input.ident}');

    await _resetUser();
    await _setDeviceUuid();

    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationSignInUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SignInUser(input: input).toJson(),
      ),
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
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationSignOutUser,
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    _resetUser();
    notifyListeners();
    return OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
  }

  Future<OperationResult<void>> updateUserData({
    required Input$UserInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUpdateUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateUser(input: input).toJson(),
      ),
    );
    notifyListeners();
    return OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
  }

  Future<OperationResult<void>> deleteUser() async {
    final pref = await SharedPreferences.getInstance();
    String? userId = pref.getString('userId');

    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUpdateUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$DeleteUser(
          userId: userId!,
          deletePhysically: true,
        ).toJson(),
      ),
    );
    _resetUser();
    notifyListeners();
    return OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
  }
}
