import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class SignUpBottomButtons extends StatelessWidget {
  final String? nextRoute;

  const SignUpBottomButtons({
    Key? key,
    this.nextRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SizedBox(
      height: 64.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Dimensions.bigButtonSize,
            ),
            onPressed: () {
              context.pop();
            },
            child: Text(
              l10n.previous,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
          // Send invites button
          const SizedBox(width: Insets.paddingLarge),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Dimensions.bigButtonSize,
              backgroundColor: theme.colorScheme.primary,
              textStyle: theme.textTheme.labelLarge,
            ),
            onPressed: () {
              if (nextRoute != null) {
                context.push(nextRoute!);
              }
            },
            child: Text(
              l10n.next,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
