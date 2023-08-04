import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class ProfileChip extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool? usePrimaryColor;

  const ProfileChip({
    super.key,
    required this.text,
    this.icon,
    this.usePrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Chip(
      avatar: icon != null
          ? Icon(
              icon,
              color: Color(theme.colorScheme.outline.value),
            )
          : null,
      label: Text(
        text,
        style: theme.textTheme.labelSmall?.copyWith(
          color: (usePrimaryColor != null && usePrimaryColor!)
              ? theme.colorScheme.onSurfaceVariant
              : theme.colorScheme.onSecondaryContainer,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: (usePrimaryColor != null && usePrimaryColor!)
          ? theme.colorScheme.inversePrimary
          : theme.colorScheme.secondaryContainer,
      side: BorderSide.none,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      labelPadding: icon != null
          ? const EdgeInsetsDirectional.only(end: Insets.paddingSmall)
          : null,
      padding: EdgeInsets.zero,
    );
  }
}
