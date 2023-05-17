import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserMockProvider extends Mock implements UserProvider {
  UserMockProvider(
      {required this.authToken, required this.userId, required this.deviceId});

  final String authToken;
  final String userId;
  final String deviceId;

  @override
  Future<String?> signInUser({required email, required password}) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString('userId', userId);
    pref.setString('deviceId', deviceId);
    pref.setString('authToken', authToken);
  }

  @override
  User? get user {
    return User(
        id: '1',
        email: 'user1@gmail.com',
        fullName: 'Shivam Tyagi',
        avatarUrl: 'https://randomuser.me/api/portraits/med/men/89.jpg',
        adminNotes: 'adminNotes',
        userHandle: 'user1Handle');
  }

  @override
  Future<List<User>> getAllUsers() async {
    return [
      User(
          id: '1',
          email: 'user1@gmail.com',
          fullName: 'Shivam Tyagi',
          avatarUrl: 'https://randomuser.me/api/portraits/med/men/89.jpg',
          adminNotes: 'adminNotes',
          userHandle: 'user1Handle'),
      User(
          id: '2',
          email: 'user11@gmail.com',
          fullName: 'Raghav Yadav',
          avatarUrl: 'https://randomuser.me/api/portraits/med/men/9.jpg',
          adminNotes: 'adminNotes',
          userHandle: 'user1Handle'),
      User(
          id: '3',
          email: 'user15@gmail.com',
          fullName: 'Kunal',
          avatarUrl: 'https://randomuser.me/api/portraits/med/men/8.jpg',
          adminNotes: 'adminNotes',
          userHandle: 'user1Handle'),
      User(
          id: '4',
          email: 'user51@gmail.com',
          fullName: 'Ujjwal saini',
          avatarUrl: 'https://randomuser.me/api/portraits/med/men/80.jpg',
          adminNotes: 'adminNotes',
          userHandle: 'user1Handle'),
    ];
  }

  @override
  Future<void> signUpUser(
      {required name, required email, required password}) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString('userId', userId);
    pref.setString('deviceId', deviceId);
    pref.setString('authToken', authToken);
  }
}
