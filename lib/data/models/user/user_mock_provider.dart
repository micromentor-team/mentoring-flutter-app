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
    return null;
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
