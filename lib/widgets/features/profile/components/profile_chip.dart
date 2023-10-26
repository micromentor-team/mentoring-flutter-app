import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class ProfileChip extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool? usePrimaryColor;
  final bool? applyIconColor;
  final bool? groupMemberChip;

  const ProfileChip({
    super.key,
    required this.text,
    this.icon,
    this.usePrimaryColor,
    this.applyIconColor,
    this.groupMemberChip = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    Color iconColor = Color(theme.colorScheme.outline.value);
    TextStyle? chipTextStyle;
    Color chipBackgroundColor;

    if (applyIconColor != null && applyIconColor!) {
      iconColor = (usePrimaryColor != null && usePrimaryColor!)
          ? theme.colorScheme.onSurfaceVariant
          : theme.colorScheme.onSecondaryContainer;
    }
    if (groupMemberChip == true) {
      chipTextStyle = theme.textTheme.labelMedium?.copyWith(
        color: theme.colorScheme.onBackground,
        fontWeight: FontWeight.w400,
      );
      chipBackgroundColor = theme.colorScheme.tertiaryContainer;
    } else {
      chipTextStyle = theme.textTheme.labelSmall?.copyWith(
        color: (usePrimaryColor != null && usePrimaryColor!)
            ? theme.colorScheme.onSurfaceVariant
            : theme.colorScheme.onSecondaryContainer,
      );
      chipBackgroundColor = (usePrimaryColor != null && usePrimaryColor!)
          ? theme.colorScheme.inversePrimary
          : theme.colorScheme.secondaryContainer;
    }

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
      padding: EdgeInsets.zero,
    );
  }
}
