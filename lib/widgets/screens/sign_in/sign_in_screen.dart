import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../__generated/schema/schema.graphql.dart';
import '../../../utilities/utility.dart';
import '../sign_up/sign_up_screen.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

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
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                  Insets.widgetSmallInset,
                  Insets.widgetLargeInset,
                  Insets.widgetSmallInset,
                  0),
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, Insets.widgetSmallInset),
                                child: Text(
                                  l10n.welcome,
                                  style: TextStyles.sectionHeader(context),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, Insets.widgetSmallInset),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, Insets.widgetSmallInset),
                                child: Text(
                                  l10n.signInMessage,
                                  style: TextStyles.sectionSubNote(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: Dimensions.loginBoxWidth,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: mediaQuery.height * 0.03,
                            ),
                            TextFormField(
                                key: const Key('emailTextField'),
                                controller: emailController,
                                decoration: const InputDecoration(
                                  labelText: "Email or phone number",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  bool validEmail = _validateEmail(value!);
                                  if (validEmail != true) {
                                    return 'Please enter a valid email or phone number';
                                  }
                                  return null;
                                },
                                obscureText: false),
                            SizedBox(
                              height: mediaQuery.height * 0.03,
                            ),
                            TextFormField(
                                key: const Key('passwordTextField'),
                                controller: passwordController,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password.';
                                  }
                                  return null;
                                },
                                obscureText: true),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, Insets.widgetMediumInset, 0, 0),
                              child: ElevatedButton(
                                style: ButtonStyles.loginButton(context),
                                key: const Key('btnSignIn'),
                                onPressed: () async {
                                  final router = GoRouter.of(context);
                                  final scaffoldManager =
                                      ScaffoldMessenger.of(context);

                                  if (_formKey.currentState!.validate()) {
                                    final signInResult = await userProvider
                                        .signInUser(Input$UserSignInInput(
                                      deviceUuid: AppUtility.getUuid(),
                                      ident: emailController.text,
                                      identType: Enum$UserIdentType.email,
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
                                  padding: const EdgeInsets.symmetric(
                                    vertical: Insets.widgetSmallInset,
                                    horizontal: Insets.widgetLargeInset * 2.5,
                                  ),
                                  child: Text(
                                    l10n.logIn,
                                    style: TextStyles.largeTextButton(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: TextButton(
                        key: const Key('registerButton'),
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Text(
                          l10n.createNewAccount,
                          style: TextStyles.sectionSubHeaderBold(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.loginBoxWidth / 2,
                            height: Dimensions.lineHeight,
                            color: Colors.black,
                          ),
                          Text(
                            l10n.or,
                            style: TextStyles.sectionSubNote(context),
                          ),
                          Container(
                            width: Dimensions.loginBoxWidth / 2,
                            height: Dimensions.lineHeight,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: TextButton(
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterSocialButton(
                              onTap: () {},
                              buttonType: ButtonType.google,
                              mini: true,
                            ),
                            Text(
                              l10n.signInWithGoogle,
                              style: TextStyles.sectionSubHeaderBold(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: TextButton(
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterSocialButton(
                              onTap: () {},
                              buttonType: ButtonType.facebook,
                              mini: true,
                            ),
                            Text(
                              l10n.signInWithFacebook,
                              style: TextStyles.sectionSubHeaderBold(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: TextButton(
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterSocialButton(
                              onTap: () {},
                              buttonType: ButtonType.linkedin,
                              mini: true,
                            ),
                            Text(
                              l10n.signInWithLinkedIn,
                              style: TextStyles.sectionSubHeaderBold(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: TextButton(
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterSocialButton(
                              onTap: () {},
                              buttonType: ButtonType.whatsapp,
                              mini: true,
                            ),
                            Text(
                              l10n.signInWithWhatsapp,
                              style: TextStyles.sectionSubHeaderBold(context),
                            ),
                          ],
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
