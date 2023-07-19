import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class SkillChip extends StatelessWidget {
  final String skill;
  final Widget? icon;

  const SkillChip({
    super.key,
    required this.skill,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Chip(
      avatar: icon,
      label: Text(
        skill,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.secondary,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: theme.colorScheme.onInverseSurface,
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
