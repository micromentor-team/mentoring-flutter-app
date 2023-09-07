import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../molecules/login_radio_button_cards.dart';
import '../../molecules/sign_up_bottom_buttons.dart';

class MentorOrEntrepreneurScreen extends StatefulWidget {
  const MentorOrEntrepreneurScreen({Key? key}) : super(key: key);

  @override
  State<MentorOrEntrepreneurScreen> createState() =>
      _MentorOrEntrepreneurScreenState();
}

class _MentorOrEntrepreneurScreenState
    extends State<MentorOrEntrepreneurScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingExtraLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const LinearProgressIndicator(value: 0.25),
              const SizedBox(height: Insets.paddingMedium),
              Text(
                l10n.roleMicroMentor,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: Insets.paddingMedium),
              createEntrepreneurMentorCards(context),
              const SizedBox(height: Insets.paddingMedium),
              Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: InkWell(
                  child: Text(l10n.learnMoreAboutMentoring,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {},
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Insets.paddingExtraLarge * 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, color: theme.colorScheme.outline),
                    Expanded(
                        child: Text(l10n.signUpHiddenInfoDesc,
                            softWrap: true,
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.colorScheme.outline))),
                  ],
                ),
              ),
              const SignUpBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
