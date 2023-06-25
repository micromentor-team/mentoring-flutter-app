import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_provider.dart';
import 'package:mm_flutter_app/data/models/user/queries/find_users.dart';
import 'package:mm_flutter_app/data/models/user/queries/get_authenticated_user.dart';
import 'package:mm_flutter_app/data/models/user/queries/get_user_profile_info.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class UserProvider extends BaseProvider {
  GraphQLClient client;

  User? _user;

  UserProvider({required this.client});

  void _setUser(Map<String, dynamic>? data) {
    if (data != null && _user == null) {
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
            GetAuthenticatedUserResult? data, void Function()? refetch)
        onData,
    Widget Function()? onLoading,
    Widget Function(String error, void Function()? refetch)? onError,
  }) {
    return runQuery<GetAuthenticatedUserResult>(
      operation: GetAuthenticatedUser(),
      onData: (data, refetch) {
        if (data != null) {
          _setUser(data.toJson());
        } else {
          _resetUser();
        }
        return onData(data, refetch);
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget queryAllUsers({
    required Widget Function(FindUsersResult? data, void Function()? refetch)
        onData,
    Widget Function()? onLoading,
    Widget Function(String error, void Function()? refetch)? onError,
  }) {
    return runQuery<FindUsersResult>(
      operation: FindUsers(),
      onData: onData,
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget queryUserProfileInfo({
    required Widget Function(
            GetUserProfileInfoResult? data, void Function()? refetch)
        onData,
    Widget Function()? onLoading,
    Widget Function(String error, void Function()? refetch)? onError,
  }) {
    return runQuery<GetUserProfileInfoResult>(
      operation: GetUserProfileInfo(),
      onData: onData,
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

  Future<String?> signInUser({required email, required password}) async {
    debugPrint('UserProvider: signInUser: $email');

    await _resetUser();
    String deviceUuid = await _setDeviceUuid();

    debugPrint('deviceUuid: $deviceUuid');

    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kSignInUser),
        variables: {
          'input': {
            'ident': email,
            'identType': 'email',
            'deviceUuid': deviceUuid,
            'password': password,
          }
        },
        onError: (error) {
          debugPrint('signInUser error: $error');
        },
      ),
    );

    // debugPrint('signInUser result: $result');

    if (result.data != null) {
      String authToken = result.data!['signInUser']['authToken'];
      String userId = result.data!['signInUser']['userId'];
      String deviceId = result.data!['signInUser']['deviceId'];
      //
      final pref = await SharedPreferences.getInstance();
      pref.setString('userId', userId);
      pref.setString('deviceId', deviceId);
      pref.setString('authToken', authToken);

      debugPrint('userId: $userId');
      debugPrint('deviceId: $deviceId');
      debugPrint('authToken: $authToken');
    }

    return result.exception?.graphqlErrors.first.message;
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
