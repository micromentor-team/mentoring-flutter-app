import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    Color bgColor;
    if (selectedCount > 0) {
      bgColor = Theme.of(context).colorScheme.secondaryContainer;
    } else {
      bgColor = Theme.of(context).colorScheme.surfaceVariant;
    }

    return Container(
      color: bgColor,
      height: Dimensions.exploreBottomSection,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          if (selectedCount > 0)
            TextButton(
              style: ButtonStyles.bigTextButton(context),
              onPressed: clearAction,
              child: Text(
                l10n.exploreClearButton,
                style: TextStyles.bigButtonText(context),
              ),
            ),
          // Send invites button
          ElevatedButton(
              style: ButtonStyles.bigElevatedButton(context),
              onPressed: selectedCount == 0 ? null : sendInvitesAction,
              child: Row(
                children: [
                  selectedCount == 0
                      ? Text(
                          l10n.exploreSendInviteButtonDisabled,
                          style: TextStyles.bigButtonDisabledText(context),
                        )
                      : Text(
                          l10n.exploreSendInviteButton(selectedCount),
                          style: TextStyles.bigButtonText(context),
                        ),
                  const SizedBox(
                    width: Dimensions.iconSpaceWidth,
                  ),
                  const Icon(Icons.send),
                ],
              ))
        ],
      ),
    );
  }
}
