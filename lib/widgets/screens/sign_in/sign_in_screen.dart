import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/schema/generated/schema.graphql.dart'
    as gql_schema;
import 'package:provider/provider.dart';

import '../../../utilities/utility.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _unfocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _openSignUpScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return const SignUpScreen();
        },
      ),
    );
  }

  bool _validateEmail(String value) {
    return EmailValidator.validate(value);
  }

  String? data;

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: SizedBox(
                        width: 360,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 20),
                              child: Image.asset(
                                'assets/images/MicroMentor.png',
                                width: 180,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 10),
                              child: Text(
                                'Sign in to your account',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 360,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                              key: const Key('emailTextField'),
                              controller: emailController,
                              decoration: const InputDecoration(
                                  labelText: "Email Address"),
                              validator: (value) {
                                bool validEmail = _validateEmail(value!);
                                if (validEmail != true) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              obscureText: false),
                          SizedBox(
                            height: mediaQuery.height * 0.01,
                          ),
                          TextFormField(
                              key: const Key('passwordTextField'),
                              controller: passwordController,
                              decoration:
                                  const InputDecoration(labelText: "Passsword"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              },
                              obscureText: true),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: ElevatedButton(
                              key: const Key('btnSignIn'),
                              onPressed: () async {
                                final router = GoRouter.of(context);
                                final scaffoldManager =
                                    ScaffoldMessenger.of(context);

                                if (_formKey.currentState!.validate()) {
                                  final signInResult =
                                      await userProvider.signInUser(
                                          gql_schema.Input$UserSignInInput(
                                    deviceUuid: AppUtility.getDeviceUuid(),
                                    ident: emailController.text,
                                    identType:
                                        gql_schema.Enum$UserIdentType.email,
                                    password: passwordController.text,
                                  ));
                                  final signInError = signInResult
                                      .gqlQueryResult
                                      .exception
                                      ?.graphqlErrors
                                      .first
                                      .message;
                                  if (signInError != null) {
                                    if (signInError == 'notFound') {
                                      scaffoldManager.showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Account not found. Please check your credentials and try again or create a new account'),
                                        ),
                                      );
                                      if (context.mounted) {
                                        emailController.text = '';
                                        passwordController.text = '';
                                      }
                                    } else if (signInError ==
                                        'passwordNoMatch') {
                                      scaffoldManager
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            'Please enter you correct password'),
                                      ));
                                      passwordController.text = '';
                                    }
                                  } else {
                                    router.push('/');
                                  }
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Sign In',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      key: const Key('registerButton'),
                      onPressed: () {
                        _openSignUpScreen(context);
                      },
                      child: Text(
                        'Register for a new account',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
