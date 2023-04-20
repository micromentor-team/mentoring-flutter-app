import 'package:flutter/cupertino.dart';
import 'package:mm_flutter_app/widgets/screens/signIn/signInScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';

Widget signInScreen({authToken, userId, deviceId}) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<UserProvider>(
        create: (context) =>
            UserMockProvider(
                authToken: authToken, userId: userId, deviceId: deviceId),
      ),
    ],
    child: SignInScreen(),
  );
}