import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_screen.dart';
import 'package:provider/provider.dart';

Widget signUpScreen({authToken, userId, deviceId}) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<UserProvider>(
        create: (context) => UserMockProvider(
            authToken: authToken, userId: userId, deviceId: deviceId),
      ),
    ],
    child: const SignUpScreen(),
  );
}
