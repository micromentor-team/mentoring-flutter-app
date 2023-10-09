import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../__generated/schema/operations_user.graphql.dart';
import '../__generated/schema/schema.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef AuthenticatedUser = Query$GetAuthenticatedUser$getAuthenticatedUser;

// User profile
typedef UserDetailedProfile = Query$FindUserDetailedProfile$findUserById;
typedef UserQuickViewProfile = Query$FindUserQuickViewProfile$findUserById;

// Recommended users
typedef RecommendedUser = Query$FindRecommendedUsers$findUsers;

// UserSearch queries and mutation
typedef CreateUserSearchResponse = Mutation$CreateUserSearch$createUserSearch;
typedef UserSearch = Query$FindUserSearch$findUserSearchById;
typedef UserSearchResult = Query$FindUserSearchResults$findUserSearchResults;

class UserProvider extends BaseProvider with ChangeNotifier {
  AuthenticatedUser? _user;

  UserProvider({required super.client});

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
      _user = operationResult.response!;
    } else {
      _resetUser();
    }
    return operationResult;
  }

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

  Future<OperationResult<List<UserSearchResult>>> findUserSearchResults({
    required String userSearchId,
    required Input$FindObjectsOptions optionsInput,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindUserSearchResults,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindUserSearchResults(
          userSearchId: userSearchId,
          options: optionsInput,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindUserSearchResults.fromJson(
              queryResult.data!,
            ).findUserSearchResults
          : null,
    );
  }

  Future<OperationResult<List<RecommendedUser>>> findRecommendedUsers({
    required Input$FindObjectsOptions optionsInput,
    required Input$UserListFilter filterInput,
    required Input$UserInput matchInput,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindRecommendedUsers,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindRecommendedUsers(
                filter: filterInput, options: optionsInput, match: matchInput)
            .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindRecommendedUsers.fromJson(
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

  // Mutations
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

  Future<OperationResult<Mutation$SignInUser$signInUser>> signInUser({
    required String email,
    required String password,
  }) async {
    await _resetUser();
    final uuid = await _setDeviceUuid();

    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationSignInUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SignInUser(
          input: Input$UserSignInInput(
            ident: email,
            identType: Enum$UserIdentType.email,
            password: password,
            deviceUuid: uuid,
          ),
        ).toJson(),
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

  Future<OperationResult<Mutation$SignUpUser$signUpUser>> signUpUser({
    required String email,
    required String password,
  }) async {
    await _resetUser();
    final uuid = await _setDeviceUuid();

    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationSignUpUser,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SignUpUser(
          input: Input$UserSignUpInput(
            email: email,
            password: password,
            deviceUuid: uuid,
          ),
        ).toJson(),
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

  Future<OperationResult<void>> updateMenteesGroupMembership({
    required Input$MenteesGroupMembershipInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUpdateMenteesGroupMembership,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateMenteesGroupMembership(input: input)
            .toJson(),
      ),
    );
    notifyListeners();
    return OperationResult(
      gqlQueryResult: queryResult,
      response: null,
    );
  }

  Future<OperationResult<void>> updateMentorsGroupMembership({
    required Input$MentorsGroupMembershipInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUpdateMentorsGroupMembership,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateMentorsGroupMembership(input: input)
            .toJson(),
      ),
    );
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
}
