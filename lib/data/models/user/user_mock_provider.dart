import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mocktail/mocktail.dart';


class UserMockProvider extends Mock implements UserProvider {

  @override
  User? get user {
    return User(id: '640abd97587f51d992676942',fullName: "raghav yadav",userHandle: "raghav");
  }

  // Query builders
  @override
  Widget queryUser({required onData, onLoading, onError}) {
    return onData();
  }

  // Query builders
  @override
  Widget queryAllUsers({required onData, onLoading, onError}) {
    return onData(jsonDecode(
        """[{"__typename": "User", "id": "640abd97587f51d992676942", "email": "raghav@gmail.com", "fullName": "raghav yadav", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "raghav"}, {"__typename": "User", "id": "640acf9055942518a6cdca38", "email": "shivam@gmail.com", "fullName": "shivam tyagi", "avatarUrl": "https://randomuser.me/api/portraits/med/men/78.jpg", "userHandle": "shivam"}, {"__typename": "User", "id": "640acfd255942518a6cdca3b", "email": "kunal@gmail.com", "fullName": "kunal kumar", "avatarUrl": "https://randomuser.me/api/portraits/med/men/75.jpg", "userHandle": "kunal0"}, {"__typename": "User", "id": "640ad02455942518a6cdca3e", "email": "ujjwal@gmail.com", "fullName": "ujjwal saini", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "ujjwal"}]"""));
  }

  // Mutations
  @override
  Future<void> signUpUser(
      {required name, required email, required password}) async {}

  @override
  Future<String?> signInUser({required email, required password}) async {
    return null;
  }

  @override
  Future<void> signOutUser() async {}

  @override
  Future<void> updateUserData({name, email, adminNotes}) async {}

  @override
  Future<void> deleteUser() async {}
}
