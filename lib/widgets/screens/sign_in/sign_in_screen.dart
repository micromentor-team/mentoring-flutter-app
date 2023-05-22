import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';

import '../../atoms/text_form_field_widget.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  final _unfocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  // _openHomeScreen(context) {
  //   Navigator.of(context)
  //       .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  // }

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
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    return (!regex.hasMatch(value)) ? false : true;
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
                          TextFormFieldWidget(key: const Key('emailTextField'),
                              textController: emailController,
                              label: "Email Address",
                              validator: (value) {
                                bool validEmail = _validateEmail(value!);
                                if (validEmail != true) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              onPressed: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              obscureText: false),
                          SizedBox(
                            height: mediaQuery.height * 0.01,
                          ),
                          TextFormFieldWidget(
                            key: const Key('passwordTextField'),
                              textController: passwordController,
                              label: "Password",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              },
                              onPressed: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              obscureText: true),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: ElevatedButton(
                              key: const Key('btnSignIn'),
                              onPressed: () async {
                                final navigator = Navigator.of(context);
                                final scaffoldManager =
                                    ScaffoldMessenger.of(context);

                                if (_formKey.currentState!.validate()) {
                                  final signInError =
                                      await userProvider.signInUser(
                                    email: email,
                                    password: password,
                                  );
                                  if (signInError != null) {
                                    if (signInError == 'notFound') {
                                      scaffoldManager.showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Account not found. Please check your credentials and try again or create a new account'),
                                        ),
                                      );
                                      if (context.mounted) {
                                        emailController!.text = '';
                                        passwordController!.text = '';
                                      }
                                    } else if (signInError ==
                                        'passwordNoMatch') {
                                      scaffoldManager
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            'Please enter you correct password'),
                                      ));
                                      passwordController!.text = '';
                                    }
                                    // showDialog(context: context, builder: );
                                  } else {
                                    navigator.pushNamedAndRemoveUntil(
                                        '/', (Route<dynamic> route) => false);
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 10),
                            child: TextButton(
                              onPressed: () {
                                //  forgot password
                                //   userProvider.resetPassword(email: email);
                              },
                              child: Text(
                                'Forgot password?',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 8),
                            child: Text(
                              'Or sign in using...',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: SizedBox(
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint('Button pressed ...');
                                    },
                                    child: const FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      size: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: SizedBox(
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint('Button pressed ...');
                                    },
                                    child: const FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                          color: Colors.blue,
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
