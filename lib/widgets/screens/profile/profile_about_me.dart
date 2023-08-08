import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/app_constants.dart';
import '../../atoms/profile_chip.dart';

class ProfileAboutMe extends StatelessWidget {
  const ProfileAboutMe({Key? key}) : super(key: key);

  Widget _createChipsSection(
      BuildContext context, String? title, List<ProfileChip> chips) {
    final ThemeData theme = Theme.of(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
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
                  padding: const EdgeInsets.all(Insets.paddingExtraSmall),
                  child: chip,
                )
            ],
          )
        ]);
  }

  Widget _createBestPieceOfAdviceSection(
      BuildContext context, String title, String content) {
    final ThemeData theme = Theme.of(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.paddingMedium,
                    vertical: Insets.paddingSmall,
                  ),
                  child: Text(
                    title,
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: theme.colorScheme.onSurface),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.paddingMedium,
                    vertical: Insets.paddingSmall,
                  ),
                  child: Text(content, style: theme.textTheme.bodyMedium),
                ),
              ],
            ),
          )
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
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.paddingMedium,
            vertical: Insets.paddingSmall,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileAboutMe,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(context, null, _createLocationChips()),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(context, "${l10n.profileMyLanguages}:",
                  _createLanguageChips()),
              const SizedBox(height: Insets.paddingSmall),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.paddingSmall,
            vertical: Insets.paddingSmall,
          ),
          child: _createBestPieceOfAdviceSection(
            context,
            "The best piece of advice I’ve ever received is:",
            "Sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies.",
          ),
        ),
        const Divider(),
      ],
    );
  }
}

List<ProfileChip> _createLocationChips() {
  List<ProfileChip> example = [
    const ProfileChip(
        text: "Lives in Shaker Heights, Ohio, USA",
        icon: Icons.flag,
        applyIconColor: true),
    const ProfileChip(
        text: "From Manila, Philippines",
        icon: Icons.flag,
        applyIconColor: true),
  ];
  return example;
}

List<ProfileChip> _createLanguageChips() {
  List<ProfileChip> example = [
    const ProfileChip(
        text: "English",
        icon: Icons.chat_bubble_outline_rounded,
        applyIconColor: true),
    const ProfileChip(
        text: "Filipino",
        icon: Icons.chat_bubble_outline_rounded,
        applyIconColor: true),
    const ProfileChip(
        text: "French",
        icon: Icons.chat_bubble_outline_rounded,
        applyIconColor: true),
  ];
  return example;
}
