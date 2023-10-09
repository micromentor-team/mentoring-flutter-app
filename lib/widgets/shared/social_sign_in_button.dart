import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/app_constants.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum SignInOptions { facebook, google, telegram, whatsapp, linkedin }

class SocialSignInButton extends StatelessWidget {
  final void Function() onPressed;
  final SignInOptions option;

  const SocialSignInButton(
      {super.key, required this.onPressed, required this.option});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    String text_;
    IconData icon_;
    switch (option) {
      case SignInOptions.facebook:
        text_ = l10n.facebook;
        icon_ = FontAwesomeIcons.facebook;
      case SignInOptions.google:
        text_ = l10n.google;
        icon_ = FontAwesomeIcons.google;
      case SignInOptions.whatsapp:
        text_ = l10n.whatsapp;
        icon_ = FontAwesomeIcons.whatsapp;
      case SignInOptions.linkedin:
        text_ = l10n.linkedin;
        icon_ = FontAwesomeIcons.linkedin;
      case SignInOptions.telegram:
        text_ = l10n.telegram;
        icon_ = FontAwesomeIcons.telegram;
    }
    return TextButton(
      style: ButtonStyles.secondaryRoundedRectangleButtonLarge(context),
      onPressed: onPressed,
      child: Row(
        children: [
          const SizedBox(
            width: 88,
          ),
          FaIcon(icon_, size: 16),
          const SizedBox(
            width: Insets.paddingSmall,
          ),
          Text(text_,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              )),
        ],
      ),
    );
  }
}
