import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class SignUpIconFooter extends StatelessWidget {
  final IconData icon;
  final String text;

  const SignUpIconFooter({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: theme.colorScheme.outline),
        const SizedBox(
          width: Insets.paddingSmall,
        ),
        Expanded(
          child: Text(
            text,
            softWrap: true,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ),
      ],
    );
  }
}
