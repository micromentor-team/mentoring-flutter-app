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
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      title: l10n.signupMethodTitle,
      subtitle: l10n.signupMethodSubtitle,
      progress: SignUpProgress.one,
      body: Column(
        children: [
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
