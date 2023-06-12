import 'package:flutter/material.dart';
import 'package:mm_flutter_app/themes/palette.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro Mentor'),
      ),
      body: const SignInSignUp(),
    );
  }
}

class SignInSignUp extends StatelessWidget {
  const SignInSignUp({super.key});

  void _openSignUpScreen(context) {
    context.go('/signup');
  }

  void _openSignInScreen(context) {
    context.go('/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to MicroMentor!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Palette.kLogoColor)),
              onPressed: () {
                _openSignUpScreen(context);
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Palette.kLogoColor)),
              onPressed: () async {
                _openSignInScreen(context);
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
