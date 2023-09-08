import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePageHeader extends StatelessWidget {
  final bool requestReceived;

  const ProfilePageHeader({
    Key? key,
    this.requestReceived = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

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
            if (requestReceived == false) _createSendInviteButton(theme),
            if (requestReceived == true)
              _createAcceptRejectInviteButtons(theme, l10n),
          ],
        ));
  }
}

_createAcceptRejectInviteButtons(ThemeData theme, AppLocalizations l10n) {
  return Padding(
    padding: const EdgeInsets.only(
      right: (Insets.paddingLarge),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.secondaryContainer,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () {},
          child: Text(
            l10n.decline,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: Insets.paddingMedium),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.primary,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () {},
          child: Text(
            l10n.accept,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        )
      ],
    ),
  );
}

_createSendInviteButton(ThemeData theme) {
  return Padding(
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
  );
}
