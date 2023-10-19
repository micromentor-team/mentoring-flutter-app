import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';

import '../../shared/social_sign_in_button.dart';

class SignupMethodScreen extends StatelessWidget {
  const SignupMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      title: l10n.signupMethodTitle,
      progress: SignUpProgress.one,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.paddingMedium),
            child: SizedBox(
              width: 320,
              child: Text(
                l10n.signupMethodSubtitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ),
          ),
          Text(
            l10n.signupMethodSsoHeader,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: Insets.paddingMedium),
          SocialSignInButton(
            option: SignInOptions.facebook,
            onPressed: () {},
          ),
          const SizedBox(height: Insets.paddingMedium),
          SocialSignInButton(
            option: SignInOptions.whatsapp,
            onPressed: () {},
          ),
          const SizedBox(height: Insets.paddingMedium),
          SocialSignInButton(
            option: SignInOptions.linkedin,
            onPressed: () {},
          ),
          const SizedBox(height: Insets.paddingMedium),
          SocialSignInButton(
            option: SignInOptions.telegram,
            onPressed: () {},
          ),
          const SizedBox(height: Insets.paddingMedium),
          SocialSignInButton(
            option: SignInOptions.google,
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.paddingMedium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child:
                        Divider(color: Theme.of(context).colorScheme.outline)),
                Text(
                  l10n.signupMethodEmailDivider,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                Expanded(
                    child:
                        Divider(color: Theme.of(context).colorScheme.outline)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.paddingSmall),
            child: InkWell(
              child: Text(
                l10n.signupMethodEmailPrompt,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {
                context.push(Routes.signupCredentials.path);
              },
            ),
          ),
        ],
      ),
      showNavigationButtons: false,
    );
  }
}
