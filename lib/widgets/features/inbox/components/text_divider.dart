import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(),
        ),
        const SizedBox(width: Insets.paddingSmall),
        Text(
          text,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
        const SizedBox(width: Insets.paddingSmall),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
