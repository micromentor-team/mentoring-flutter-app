import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../shared/social_sign_in_button.dart';
import '../../sign_up/screens/sign_up_method.dart';

class SignInScreen extends StatefulWidget {
  final String nextRouteName;

  const SignInScreen({
    super.key,
    required this.nextRouteName,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _unfocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  static const double _loginBoxWidth = 360;
  static const double _sizedBoxWidth = 360;

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
          return const SignupMethodScreen();
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
                          0, Insets.paddingLarge, 0, 0),
                      child: SizedBox(
                        width: _sizedBoxWidth,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                l10n.signinTitle,
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
                                l10n.signinSubtitle,
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
                                  labelText: l10n.signinEmailOrPhoneInputLabel,
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  bool validEmail = _validateEmail(value!);
                                  if (validEmail != true) {
                                    return l10n.signinEmailOrPhoneInputError;
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
                                  labelText: l10n.signinPasswordInputLabel,
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return l10n.signinPasswordInputError;
                                  }
                                  return null;
                                },
                                obscureText: true),
                            SizedBox(
                              height: mediaQuery.height * 0.03,
                            ),
                            ElevatedButton(
                              style: ButtonStyles.primaryRoundedRectangleButton(
                                  context),
                              key: const Key('btnSignIn'),
                              onPressed: () async {
                                final router = GoRouter.of(context);
                                final scaffoldManager =
                                    ScaffoldMessenger.of(context);

                                if (_formKey.currentState!.validate()) {
                                  final signInResult =
                                      await userProvider.signInUser(
                                    email: emailController.text,
                                    password: passwordController.text,
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
                                          content: Text(
                                              l10n.signinErrorAccountNotFound),
                                        ),
                                      );
                                      if (context.mounted) {
                                        emailController.text = '';
                                        passwordController.text = '';
                                      }
                                    } else if (signInError ==
                                        'passwordNoMatch') {
                                      scaffoldManager.showSnackBar(SnackBar(
                                        content: Text(
                                            l10n.signinErrorIncorrectPassword),
                                      ));
                                      passwordController.text = '';
                                    }
                                  } else {
                                    router.pushNamed(
                                      Routes.root.name,
                                      queryParameters: {
                                        RouteParams.nextRouteName:
                                            widget.nextRouteName
                                      },
                                    );
                                  }
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 80.0,
                                ),
                                child: Text(
                                  l10n.signinLoginButtonLabel,
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        debugPrint("reset password");
                      },
                      child: Text(
                        l10n.signinResetPasswordPrompt,
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    TextButton(
                      key: const Key('registerButton'),
                      onPressed: () {
                        _openSignUpScreen(context);
                      },
                      child: Text(
                        l10n.signinCreateAccountPrompt,
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Insets.paddingSmall),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                                  color:
                                      Theme.of(context).colorScheme.outline)),
                          Text(
                            l10n.signinSsoDivider,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          ),
                          Expanded(
                              child: Divider(
                                  color:
                                      Theme.of(context).colorScheme.outline)),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: Insets.paddingMedium),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialSignInButton(
                              option: SignInOptions.facebook,
                              onPressed: () {},
                            ),
                            const SizedBox(width: Insets.paddingMedium),
                            SocialSignInButton(
                              option: SignInOptions.google,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.paddingMedium),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialSignInButton(
                              option: SignInOptions.linkedin,
                              onPressed: () {},
                            ),
                            const SizedBox(width: Insets.paddingMedium),
                            SocialSignInButton(
                              option: SignInOptions.telegram,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.paddingMedium),
                        SocialSignInButton(
                          option: SignInOptions.whatsapp,
                          onPressed: () {},
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
