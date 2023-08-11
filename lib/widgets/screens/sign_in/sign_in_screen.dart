import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../__generated/schema/schema.graphql.dart';
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

  static const double _loginBoxWidth = 360;
  static const double _textBoxWidth = 200;
  static const double _sizedBoxWidth = 360;
  static const double _iconWidth = 24;
  static const EdgeInsetsDirectional _signInWithButtonPadding =
      EdgeInsetsDirectional.fromSTEB(
    64.0,
    8.0,
    8.0,
    8.0,
  );

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
    final ThemeData theme = Theme.of(context);
    final userProvider = Provider.of<UserProvider>(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final mediaQuery = MediaQuery.of(context).size;

    //adding a comment
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Insets.paddingSmall,
                  Insets.paddingExtraLarge, Insets.paddingSmall, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0, Insets.paddingExtraLarge, 0, 0),
                      child: SizedBox(
                        width: _sizedBoxWidth,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                l10n.welcomeBack,
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, Insets.paddingMedium),
                            ),
                            Center(
                              child: Text(
                                l10n.signInMessage,
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: _loginBoxWidth,
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
                                decoration: InputDecoration(
                                  labelText: l10n.emailOrPhoneNumber,
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  bool validEmail = _validateEmail(value!);
                                  if (validEmail != true) {
                                    return l10n.askForValidCredentials;
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
                                decoration: InputDecoration(
                                  labelText: l10n.password,
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return l10n.askForPassword;
                                  }
                                  return null;
                                },
                                obscureText: true),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, Insets.paddingMedium, 0, 0),
                              child: ElevatedButton(
                                style:
                                    ButtonStyles.primaryRoundedRectangleButton(
                                        context),
                                key: const Key('btnSignIn'),
                                onPressed: () async {
                                  final router = GoRouter.of(context);
                                  final scaffoldManager =
                                      ScaffoldMessenger.of(context);

                                  if (_formKey.currentState!.validate()) {
                                    final signInResult =
                                        await userProvider.signInUser(
                                      input: Input$UserSignInInput(
                                        // TODO: This generates a new UUID for the device every time the user signs in.
                                        // it should be relying on the uuid stored on the device instead.
                                        deviceUuid: await AppUtility.getUuid(),
                                        ident: emailController.text,
                                        identType: Enum$UserIdentType.email,
                                        password: passwordController.text,
                                      ),
                                    );
                                    final signInError = signInResult
                                        .gqlQueryResult
                                        .exception
                                        ?.graphqlErrors
                                        .firstOrNull
                                        ?.message;
                                    if (signInError != null) {
                                      if (signInError == 'notFound') {
                                        scaffoldManager.showSnackBar(
                                          SnackBar(
                                            content:
                                                Text(l10n.accountNotFoundError),
                                          ),
                                        );
                                        if (context.mounted) {
                                          emailController.text = '';
                                          passwordController.text = '';
                                        }
                                      } else if (signInError ==
                                          'passwordNoMatch') {
                                        scaffoldManager.showSnackBar(SnackBar(
                                          content:
                                              Text(l10n.incorrectPasswordError),
                                        ));
                                        passwordController.text = '';
                                      }
                                    } else {
                                      router.push(Routes.root.path);
                                    }
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 80.0,
                                  ),
                                  child: Text(
                                    l10n.logIn,
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.paddingSmall),
                      child: TextButton(
                        key: const Key('registerButton'),
                        onPressed: () {
                          _openSignUpScreen(context);
                        },
                        child: Text(
                          l10n.createNewAccount,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.paddingSmall),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: _loginBoxWidth / 2,
                            height: 1,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          Text(
                            l10n.or,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          ),
                          Container(
                            width: _loginBoxWidth / 2,
                            height: 1,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: _signInWithButtonPadding,
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: _iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.googleIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Insets.paddingSmall,
                                ),
                                SizedBox(
                                  width: _textBoxWidth,
                                  child: Text(
                                    l10n.signInWithGoogle,
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: _signInWithButtonPadding,
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: _iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.facebookIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Insets.paddingSmall,
                                ),
                                SizedBox(
                                  width: _textBoxWidth,
                                  child: Text(
                                    l10n.signInWithFacebook,
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: _signInWithButtonPadding,
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: _iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.linkedInIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Insets.paddingSmall,
                                ),
                                SizedBox(
                                  width: _textBoxWidth,
                                  child: Text(
                                    l10n.signInWithLinkedIn,
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: _signInWithButtonPadding,
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: _iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.whatsappIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Insets.paddingSmall,
                                ),
                                SizedBox(
                                  width: _textBoxWidth,
                                  child: Text(
                                    l10n.signInWithWhatsapp,
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
