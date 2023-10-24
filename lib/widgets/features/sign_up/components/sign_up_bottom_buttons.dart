import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class SignUpBottomButtons extends StatelessWidget {
  final String leftButtonText;
  final String rightButtonText;
  final Function()? leftOnPress;
  final Function()? rightOnPress;

  const SignUpBottomButtons({
    Key? key,
    required this.leftButtonText,
    required this.rightButtonText,
    this.leftOnPress,
    this.rightOnPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SizedBox(
      height: 64.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Dimensions.bigButtonSize,
            ),
            onPressed: leftOnPress,
            child: Text(
              leftButtonText,
              style: leftOnPress != null
                  ? theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    )
                  : null,
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
            onPressed: rightOnPress,
            child: Text(
              rightButtonText,
              style: rightOnPress != null
                  ? theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
