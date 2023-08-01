import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ProfilePageHeader extends StatelessWidget {
  const ProfilePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
        color: theme.colorScheme.secondaryContainer,
        height: 68.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.paddingLarge),
              child: Icon(
                Icons.keyboard_backspace_outlined,
                color: theme.colorScheme.secondary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: (Insets.paddingLarge),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Dimensions.bigButtonSize,
                  backgroundColor: theme.colorScheme.surface,
                  disabledBackgroundColor: theme.colorScheme.surface,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Invite Maria to Connect",
                      style: theme.textTheme.labelLarge
                          ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                    ),
                    const SizedBox(
                      width: Insets.paddingSmall,
                    ),
                    Icon(
                      Icons.send_outlined,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
