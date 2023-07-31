import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ExploreBottomButtons extends StatelessWidget {
  final int selectedCount;
  final void Function() clearAction;
  final void Function() sendInvitesAction;

  const ExploreBottomButtons({
    Key? key,
    required this.selectedCount,
    required this.clearAction,
    required this.sendInvitesAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    Color bgColor;
    if (selectedCount > 0) {
      bgColor = theme.colorScheme.secondaryContainer;
    } else {
      bgColor = theme.colorScheme.surfaceVariant;
    }

    return Container(
      color: bgColor,
      height: 64.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          if (selectedCount > 0)
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Dimensions.bigButtonSize,
              ),
              onPressed: clearAction,
              child: Text(
                l10n.clear,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.secondary,
                ),
              ),
            ),
          // Send invites button
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Dimensions.bigButtonSize,
                backgroundColor: theme.colorScheme.surface,
                disabledBackgroundColor: theme.colorScheme.surface,
                textStyle: theme.textTheme.labelLarge,
              ),
              onPressed: selectedCount == 0 ? null : sendInvitesAction,
              child: Row(
                children: [
                  selectedCount == 0
                      ? Text(
                          l10n.exploreSendInviteButtonDisabled,
                        )
                      : Text(
                          l10n.exploreSendInviteButton(selectedCount),
                        ),
                  const SizedBox(
                    width: Insets.paddingSmall,
                  ),
                  const Icon(Icons.send),
                ],
              ))
        ],
      ),
    );
  }
}
