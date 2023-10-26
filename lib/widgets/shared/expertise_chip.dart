import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ExpertiseChip extends StatelessWidget {
  final String expertise;
  final Icon? icon;

  const ExpertiseChip({
    super.key,
    required this.expertise,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // ignore: non_constant_identifier_names
    final Icon ChipIcon;
    if (icon == null) {
      ChipIcon = Icon(
        Icons.campaign_outlined,
        color: theme.colorScheme.onSecondaryContainer,
      );
    } else {
      ChipIcon = icon!;
    }
    return Chip(
      avatar: ChipIcon,
      label: Text(
        expertise,
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
