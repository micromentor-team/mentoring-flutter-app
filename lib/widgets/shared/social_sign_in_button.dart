import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../constants/app_constants.dart';

enum SignInOptions { facebook, google, telegram, whatsapp, linkedin, email }

class SocialSignInButton extends StatelessWidget {
  final void Function() onPressed;
  final SignInOptions option;
  static const double ssoIconSize = 24.0;

  const SocialSignInButton(
      {super.key, required this.onPressed, required this.option});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    String label;
    Widget icon;
    switch (option) {
      case SignInOptions.facebook:
        label = l10n.ssoFacebook;
        icon = Image.asset(
          Assets.ssoFacebookIcon,
          width: ssoIconSize,
          height: ssoIconSize,
        );
      case SignInOptions.google:
        label = l10n.ssoGoogle;
        icon = Image.asset(
          Assets.ssoGoogleIcon,
          width: ssoIconSize,
          height: ssoIconSize,
        );
      case SignInOptions.whatsapp:
        label = l10n.ssoWhatsapp;
        icon = Image.asset(
          Assets.ssoWhatsAppIcon,
          width: ssoIconSize,
          height: ssoIconSize,
        );
      case SignInOptions.linkedin:
        label = l10n.ssoLinkedin;
        icon = Image.asset(
          Assets.ssoLinkedInIcon,
          width: ssoIconSize,
          height: ssoIconSize,
        );
      case SignInOptions.telegram:
        label = l10n.ssoTelegram;
        icon = Image.asset(
          Assets.ssoTelegramIcon,
          width: ssoIconSize,
          height: ssoIconSize,
        );
      case SignInOptions.email:
        label = l10n.ssoEmail;
        icon = Icon(
          Icons.email_outlined,
          color: theme.colorScheme.onPrimaryContainer,
          size: ssoIconSize,
        );
    }
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(144, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const SizedBox(width: Insets.paddingMedium),
          icon,
          const SizedBox(width: Insets.paddingSmall),
          Text(
            label,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
