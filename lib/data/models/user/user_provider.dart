import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import '../../../widgets/atoms/server_error.dart';

class UserProvider extends ChangeNotifier {
  GraphQLClient client;

  User? _user;

  UserProvider({required this.client});

  void _setUser(QueryResult result) {
    if (result.data != null && _user == null) {
      _user = User.fromJson(result.data!['getAuthenticatedUser']);
      debugPrint('Got this user from the server userId: ${_user!.id}');
    }
  }

  void _resetUser() async {
    _user = null;

    client.resetStore();
    // remove tokens
    final pref = await SharedPreferences.getInstance();
    pref.remove('authToken');
    pref.remove('userId');
    // pref.remove('user_avatar');
  }

  User? get user {
    return _user;
  }

  // Query builders
  Widget queryUser({required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        fetchPolicy: FetchPolicy.networkOnly,
        document: gql(kGetAuthenticatedUser),
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) {
          final error = result.exception.toString();

          if (onError != null) {
            return onError(error);
          }
          return ServerError(error: error);
        }

        if (result.isLoading) {
          if (onLoading != null) {
            return onLoading();
          }
          return const SizedBox.shrink();
        }

        if (result.data != null) {
          _setUser(result);
        } else {
          _resetUser();
        }
        return onData(result.data!['getAuthenticatedUser']);
      },
    );
  }

  // Mutations
  Future<void> signUpUser(
      {required name, required email, required password}) async {
    debugPrint('UserProvider: signUpUser: $name');

    final pref = await SharedPreferences.getInstance();
    const uuid = Uuid();
    String deviceUuid = uuid.v1();
    pref.setString('deviceUuid', deviceUuid);
    pref.remove('authToken');
    pref.remove('userId');

    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kSignUpUser),
        variables: {
          'input': {
            'fullName': name,
            'email': email,
            'deviceUuid': deviceUuid,
            'password': password,
          }
        },
        onError: (error) {
          debugPrint('signUpUser error: $error');
        },
      ),
    );

    debugPrint('signUpUser result: $result');

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

  Future<void> createUsers(
      {required firstName,
      required lastName,
      required profileImage,
      required city,
      required email,
      required country,
      required message,
      required password,
      required vid}) async {
    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kCreateUsers),
        variables: {
          "input": {
            "firstName": firstName,
            "lastName": lastName,
            "fullName": '$firstName $lastName',
            "source": '$profileImage',
            "email": email,
            "modelType": 'Expertise',
            "password": password,
            "deviceUuid": vid,
          }
        },
        onError: (error) {
          debugPrint('signUpUser error: $error');
        },
      ),
    );

    debugPrint('signUpUser result: $result');
  }

  Future<List<User>> getAllUsers() async {
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kGetAllUsers),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: const {
          "filter": {"searchText": ''}
        },

      ),
    );

    if (result.data != null) {
      List data = result.data!['findUsers'];
      List<User> usersList = [];
      data.forEach((element) {
        usersList.add(User.fromJson(element));
      });
      return usersList;
    }
    return [];
  }

  Future<void> updateUserPassword({required currentPass, required newPass}) async {
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kUpdateUser),
        variables: {
          "input": {"newPassword": newPass, "currentPassword": currentPass, "id": user!.id}
        },
      ),
    );
    if (result.data != null){
      var data = result.data!['updateUser'];
      print('User updated $data');
    }

  }
  Future<void> updateUserData({ name, email,adminNotes}) async {
    final variables = {
      'input': {
        "id": user!.id
      }
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

    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kUpdateUser),
        variables: variables,
      ),
    );
    print(result);
   notifyListeners();
  }
  Future<User>getUserData()async{
    final QueryResult updatedResult = await client.query(
      QueryOptions(
        document: gql(kGetAuthenticatedUser),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (updatedResult.data != null){
      _setUser(updatedResult);
      var updatedData = updatedResult.data!['getAuthenticatedUser'];
      print('User updated $updatedData');
    }
    _user = User.fromJson(updatedResult.data!['getAuthenticatedUser']);
    return _user!;
  }

  Future<void> resetPassword({email})async{
    // await getUserByEmail(email);
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kMultiStepAction),
        variables: {
          "input": {
            "email": email
          }
        },
      ),
    );
    print(result);
  }

  Future<String?> signInUser({required email, required password}) async {
    debugPrint('UserProvider: signInUser: $email');

    final pref = await SharedPreferences.getInstance();
    const uuid = Uuid();
    String deviceUuid = uuid.v1();
    pref.setString('deviceUuid', deviceUuid);
    pref.remove('authToken');
    pref.remove('userId');

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

    debugPrint('signInUser result: $result');
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
    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kSignOutUser),
        onError: (error) {
          debugPrint('signOutUser error: $error');
        },
      ),
    );
    debugPrint('signOutUser result: $result');
    _resetUser();
    notifyListeners();
  }

  Future<void> deleteUser() async {
    final pref = await SharedPreferences.getInstance();
    String? userId = pref.getString('userId');

    final QueryResult result = await client.mutate(
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
    debugPrint('deleteUser result: $result');
    _resetUser();
    notifyListeners();
  }
}
