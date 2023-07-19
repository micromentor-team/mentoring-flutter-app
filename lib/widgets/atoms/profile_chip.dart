import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class ProfileChip extends StatelessWidget {
  final String text;
  final IconData? icon;

  const ProfileChip({
    super.key,
    required this.text,
    this.icon,
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
          color: theme.colorScheme.onSecondaryContainer,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      side: BorderSide.none,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      labelPadding: icon != null
          ? const EdgeInsetsDirectional.only(end: Insets.widgetSmallInset)
          : null,
      padding: EdgeInsets.zero,
    );
  }
}
