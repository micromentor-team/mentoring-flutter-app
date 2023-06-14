import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ReminderBanner {
  static void showReminderBanner(
    BuildContext context,
    Icon? icon,
    String text,
    void Function() onOpenPressed,
    void Function() onDismissPressed,
  ) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(text),
        leading: icon,
        actions: [
          TextButton(
            onPressed: onOpenPressed,
            child: Text(
              l10n.bannerActionOpen,
              style: TextStyles.bannerAction(context),
            ),
          ),
          TextButton(
            onPressed: () => onDismissPressed,
            child: Text(
              l10n.bannerActionDismiss,
              style: TextStyles.bannerAction(context),
            ),
          ),
        ],
      ),
    );
  }

  static void hideReminderBanner(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }
}
