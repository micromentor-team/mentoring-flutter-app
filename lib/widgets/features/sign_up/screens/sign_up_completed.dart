import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../components/sign_up_bottom_buttons.dart';

class SignupCompletedScreen extends StatefulWidget {
  const SignupCompletedScreen({super.key});

  @override
  State<SignupCompletedScreen> createState() => _SignupCompletedScreenState();
}

class _SignupCompletedScreenState extends State<SignupCompletedScreen> {
  late final UserProvider _userProvider;
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;
  bool _acceptedTerms = false;
  bool _processing = false;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _isEntrepreneur =
        _registrationModel.updateUserInput.userType == UserType.entrepreneur;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    final TextStyle? contentTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: theme.colorScheme.onPrimaryContainer,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingExtraLarge),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      l10n.signupCompletedTitle,
                      style: theme.textTheme.headlineLarge?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: Insets.paddingLarge),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.signupCompletedContent1,
                          style: contentTextStyle,
                        ),
                        const SizedBox(height: Insets.paddingMedium),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.signupCompletedContent2Icon,
                              style: contentTextStyle,
                            ),
                            const SizedBox(width: Insets.paddingMedium),
                            Flexible(
                              child: Text(
                                l10n.signupCompletedContent2,
                                style: contentTextStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.paddingExtraSmall),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.signupCompletedContent3Icon,
                              style: contentTextStyle,
                            ),
                            const SizedBox(width: Insets.paddingMedium),
                            Flexible(
                              child: Text(
                                l10n.signupCompletedContent3,
                                style: contentTextStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.paddingExtraSmall),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.signupCompletedContent4Icon,
                              style: contentTextStyle,
                            ),
                            const SizedBox(width: Insets.paddingMedium),
                            Flexible(
                              child: Text(
                                l10n.signupCompletedContent4,
                                style: contentTextStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.paddingMedium),
                        Text(
                          _isEntrepreneur
                              ? l10n.signupCompletedContent5Entrepreneur
                              : l10n.signupCompletedContent5Mentor,
                          style: contentTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: Insets.paddingLarge),
                    ListTile(
                      leading: Checkbox(
                        value: _acceptedTerms,
                        onChanged: (value) => setState(
                          () => _acceptedTerms = value ?? false,
                        ),
                      ),
                      title: MarkdownBody(
                        data: l10n.signupMethodSubtitle,
                        styleSheet:
                            MarkdownStyleSheet.fromTheme(theme).copyWith(
                          p: contentTextStyle?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          a: contentTextStyle?.copyWith(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTapLink: (_, url, __) => launchUrl(Uri.parse(url!)),
                      ),
                    ),
                    const SizedBox(height: Insets.paddingExtraLarge),
                  ],
                ),
              ),
              const Spacer(),
              _processing
                  ? const CircularProgressIndicator()
                  : SignUpBottomButtons(
                      leftButtonText: l10n.actionPrevious,
                      leftOnPress: context.pop,
                      rightButtonText: _isEntrepreneur
                          ? l10n.signupCompletedEntrepreneurAction
                          : l10n.signupCompletedMentorAction,
                      rightOnPress: _acceptedTerms
                          ? () async {
                              setState(() => _processing = true);
                              if (await _registrationModel
                                  .registerUser(_userProvider)) {
                                router.pushNamed(
                                  Routes.root.name,
                                  queryParameters: {
                                    RouteParams.nextRouteName:
                                        Routes.explore.name
                                  },
                                );
                              } else {
                                WidgetsBinding.instance.addPostFrameCallback(
                                  (_) => setState(() => _processing = false),
                                );
                              }
                            }
                          : null,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
