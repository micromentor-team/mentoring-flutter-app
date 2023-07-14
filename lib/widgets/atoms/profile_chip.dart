import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class ProfileChip extends StatelessWidget {
  final String text;
  final Widget? icon;

  const ProfileChip({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: icon,
      label: Text(
        text,
        style: TextStyles.quickViewProfileProfileChipLabel(context),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
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
