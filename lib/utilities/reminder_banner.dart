import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ReminderBanner {
  static void showReminderBanner(
    BuildContext context,
    Icon? icon,
    String text,
    void Function() onOpenPressed,
    void Function() onDismissPressed,
  ) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(text),
        leading: icon,
        actions: [
          TextButton(
            onPressed: onOpenPressed,
            child: Text(
              'OPEN',
              style: TextStyles.bannerAction(context),
            ),
          ),
          TextButton(
            onPressed: () => onDismissPressed,
            child: Text(
              'DISMISS',
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
