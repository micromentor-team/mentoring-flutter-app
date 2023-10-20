import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/social_sign_in_button.dart';

class SignupMethodScreen extends StatelessWidget {
  const SignupMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return SignUpTemplate(
      title: l10n.signupMethodTitle,
      progress: SignUpProgress.one,
      body: Column(
        children: [
          MarkdownBody(
            data: l10n.signupMethodSubtitle,
            styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
              p: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.secondary,
              ),
              a: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.secondary,
                decoration: TextDecoration.underline,
              ),
              textAlign: WrapAlignment.center,
            ),
            onTapLink: (_, url, __) => launchUrl(Uri.parse(url!)),
          ),
          const SizedBox(height: Insets.paddingExtraLarge),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialSignInButton(
                option: SignInOptions.whatsapp,
                onPressed: () {},
              ),
              const SizedBox(width: Insets.paddingMedium),
              SocialSignInButton(
                option: SignInOptions.email,
                onPressed: () {
                  context.push(Routes.signupCredentials.path);
                },
              ),
            ],
          ),
        ],
      ),
      showNavigationButtons: false,
    );
  }
}
