import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/profile_chip.dart';

class ProfileChipPadded extends ProfileChip {
  const ProfileChipPadded({
    super.key,
    required super.text,
    super.icon,
    super.usePrimaryColor,
    super.applyIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.paddingSmall),
      child: super.build(context),
    );
  }
}
