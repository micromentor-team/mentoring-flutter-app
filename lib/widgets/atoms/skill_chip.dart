import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class SkillChip extends StatelessWidget {
  final String skill;
  final Widget? icon;

  const SkillChip({
    super.key,
    required this.skill,
    this.icon = const Icon(
      Icons.campaign_outlined,
      color: Color(0xFF1D192B),
    ),
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Chip(
      avatar: icon,
      label: Text(
        skill,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: theme.colorScheme.secondaryContainer,
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
