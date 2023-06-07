import 'package:flutter/material.dart';

import 'package:mm_flutter_app/themes/palette.dart';

class ReminderBanner {
  static void showReminderBanner(
      BuildContext context, Icon? icon, String text, Function() onOpenPressed) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        padding: const EdgeInsets.all(16),
        content: Text(text),
        leading: icon,
        backgroundColor: Colors.white70,
        actions: [
          TextButton(
            onPressed: onOpenPressed,
            child: const Text(
              'OPEN',
              style: TextStyle(
                color: Palette.kTextMediumEmphasis,
              ),
            ),
          ),
          TextButton(
            onPressed: () => ReminderBanner.hideReminderBanner(context),
            child: const Text(
              'DISMISS',
              style: TextStyle(
                color: Palette.kTextMediumEmphasis,
              ),
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
