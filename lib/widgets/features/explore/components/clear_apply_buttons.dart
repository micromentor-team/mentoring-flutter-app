import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ClearApplyButtons extends StatelessWidget {
  final Function() onClear;
  final Function() onApply;

  const ClearApplyButtons({
    super.key,
    required this.onClear,
    required this.onApply,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
          ),
          onPressed: onClear,
          child: Text(l10n.clear, style: theme.textTheme.labelLarge),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.surface,
            disabledBackgroundColor: theme.colorScheme.surface,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: onApply,
          child: Text(l10n.apply, style: theme.textTheme.labelLarge),
        ),
      ],
    );
  }
}
