import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

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
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
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
            onPressed: rightOnPress,
            child: Text(
              rightButtonText,
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
