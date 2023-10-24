import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class BigProfileChip extends StatelessWidget {
  final String text;
  final IconData? icon;

  const BigProfileChip({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    Color iconColor = theme.colorScheme.onSecondaryContainer;
    Color chipBackgroundColor = theme.colorScheme.secondaryContainer;
    TextStyle? chipTextStyle = theme.textTheme.labelLarge?.copyWith(
      color: theme.colorScheme.onSecondaryContainer,
    );

    return Chip(
      avatar: icon != null ? Icon(icon, color: iconColor) : null,
      label: Text(
        text,
        style: chipTextStyle,
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: chipBackgroundColor,
      side: BorderSide.none,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      labelPadding: icon != null
          ? const EdgeInsetsDirectional.only(end: Insets.paddingSmall)
          : null,
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.paddingSmall, vertical: 10.0),
    );
  }
}
