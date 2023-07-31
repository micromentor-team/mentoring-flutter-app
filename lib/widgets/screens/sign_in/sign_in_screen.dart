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
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0, Insets.widgetLargeInset, 0, 0),
                      child: SizedBox(
                        width: Dimensions.sizedBoxWidth,
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
                                  0, 0, 0, Insets.widgetMediumInset),
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
                                  0, Insets.widgetMediumInset, 0, 0),
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
                                        deviceUuid: AppUtility.getUuid(),
                                        ident: emailController.text,
                                        identType: Enum$UserIdentType.email,
                                        password: passwordController.text,
                                      ),
                                    );
                                    final signInError = signInResult
                                        .gqlQueryResult
                                        .exception
                                        ?.graphqlErrors
                                        .first
                                        .message;
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
                                    vertical:
                                        Dimensions.loginButtonVerticalPadding,
                                    horizontal:
                                        Dimensions.loginButtonHorizontalPadding,
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
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
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
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.loginBoxWidth / 2,
                            height: Dimensions.lineHeight,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          Text(
                            l10n.or,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          ),
                          Container(
                            width: Dimensions.loginBoxWidth / 2,
                            height: Dimensions.lineHeight,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.signInWithButtonLeftPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding),
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: Dimensions.iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.googleIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Dimensions.iconSpaceWidth,
                                ),
                                SizedBox(
                                  width: Dimensions.textBoxWidth,
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
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.signInWithButtonLeftPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding),
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: Dimensions.iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.facebookIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Dimensions.iconSpaceWidth,
                                ),
                                SizedBox(
                                  width: Dimensions.textBoxWidth,
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
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.signInWithButtonLeftPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding),
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: Dimensions.iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.linkedInIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Dimensions.iconSpaceWidth,
                                ),
                                SizedBox(
                                  width: Dimensions.textBoxWidth,
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
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.signInWithButtonLeftPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding,
                              Dimensions.signInWithButtonOtherPadding),
                          child: TextButton(
                            onPressed: () {
                              _openSignUpScreen(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: Dimensions.iconWidth,
                                  child: Image(
                                    image: AssetImage(Assets.whatsappIcon),
                                  ),
                                ),
                                const SizedBox(
                                  width: Dimensions.iconSpaceWidth,
                                ),
                                SizedBox(
                                  width: Dimensions.textBoxWidth,
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
