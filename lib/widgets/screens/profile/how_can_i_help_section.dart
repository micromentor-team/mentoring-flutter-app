import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';

List<ProfileChip> _createExpertisesChips() {
  List<ProfileChip> example = [
    const ProfileChip(
        text: "Marketing", icon: Icons.campaign_outlined, applyIconColor: true),
    const ProfileChip(
        text: "Operations",
        icon: Icons.settings_applications_outlined,
        applyIconColor: true),
    const ProfileChip(
        text: "Starting up", icon: Icons.rocket_outlined, applyIconColor: true),
    const ProfileChip(
        text: "Management", icon: Icons.people_outlined, applyIconColor: true),
    const ProfileChip(
        text: "Sales", icon: Icons.trending_up_outlined, applyIconColor: true),
  ];
  return example;
}

List<ProfileChip> _createIndustriesChips() {
  List<ProfileChip> example = [
    const ProfileChip(
        text: "Digital Marketing, e-Commerce, Social Media",
        icon: Icons.campaign_outlined,
        applyIconColor: true),
    const ProfileChip(
        text: "Management of Companies",
        icon: Icons.people_outlined,
        applyIconColor: true),
    const ProfileChip(
        text: "Healthcare and Social Services",
        icon: Icons.medication_outlined,
        applyIconColor: true),
  ];
  return example;
}

List<ProfileChip> _createAvailabilityChips() {
  List<ProfileChip> example = [
    const ProfileChip(
      text: "Weekly check-ins",
    ),
    const ProfileChip(
      text: "Monthly check-ins",
    ),
    const ProfileChip(
      text: "Informal chats",
    ),
    const ProfileChip(
      text: "Formal meetings",
    ),
    const ProfileChip(
      text: "Spot mentoring",
    ),
  ];
  return example;
}

class HowCanIHelpSection extends StatelessWidget {
  const HowCanIHelpSection({
    Key? key,
  }) : super(key: key);

  Widget _createChipsSection(
      BuildContext context, String title, List<ProfileChip> chips) {
    final ThemeData theme = Theme.of(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.labelSmall!
                .copyWith(color: theme.colorScheme.secondary),
          ),
          const SizedBox(height: Insets.paddingExtraSmall),
          Wrap(
            children: [
              for (var chip in chips)
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      end: Insets.paddingExtraSmall),
                  child: chip,
                )
            ],
          )
        ]);
  }

  Widget _createTextSection(
      BuildContext context, String title, String content) {
    final ThemeData theme = Theme.of(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.labelSmall!
                .copyWith(color: theme.colorScheme.secondary),
          ),
          const SizedBox(height: Insets.paddingExtraSmall),
          Text(content, style: theme.textTheme.bodyMedium),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Insets.paddingMedium,
                  vertical: Insets.paddingSmall),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.howCanIHelp,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.colorScheme.onSurface),
                    ),
                    const SizedBox(height: Insets.paddingSmall),
                    _createChipsSection(context, "${l10n.myExpertises}:",
                        _createExpertisesChips()),
                    const SizedBox(height: Insets.paddingSmall),
                    _createChipsSection(context, "${l10n.myIndustries}:",
                        _createIndustriesChips()),
                    const SizedBox(height: Insets.paddingSmall),
                    _createChipsSection(context, "${l10n.myAvailability}:",
                        _createAvailabilityChips()),
                    const SizedBox(height: Insets.paddingSmall),
                    _createTextSection(context, "${l10n.myExpectations}:",
                        """Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend.""")
                  ]))
        ]);
  }
}
