import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';

class ProfileAboutMe extends StatelessWidget {
  const ProfileAboutMe({super.key});

  Widget _createChipsSection(
      BuildContext context, String? title, List<ProfileChip> chips) {
    final ThemeData theme = Theme.of(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              padding: const EdgeInsets.fromLTRB(0, Insets.paddingExtraSmall,
                  Insets.paddingExtraSmall, Insets.paddingExtraSmall),
              child: chip,
            )
        ],
      )
    ]);
  }

  Widget _createBestPieceOfAdviceSection(
      BuildContext context, String title, String content) {
    final ThemeData theme = Theme.of(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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

    //TODO: call the backend instead of using hardcoded data
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.paddingMedium,
            vertical: Insets.paddingSmall,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileAboutMe,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(
                  context,
                  null,
                  _createLocationChips(
                      "Shaker Heights, Ohio, USA", "Manila, Philippines")),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(context, "${l10n.profileMyLanguages}:",
                  _createLanguageChips(["English", "Filipino", "French"])),
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

List<ProfileChip> _createLocationChips(
  String cityLivesIn,
  String? cityFrom,
) {
  List<ProfileChip> example = [
    ProfileChip(
        text: "Lives in $cityLivesIn", icon: Icons.flag, applyIconColor: true),
    if (cityFrom != null)
      ProfileChip(
          text: "From $cityFrom", icon: Icons.flag, applyIconColor: true),
  ];
  return example;
}

List<ProfileChip> _createLanguageChips(
  List<String> languages,
) {
  List<ProfileChip> example = [];
  for (var language in languages) {
    example.add(
      ProfileChip(
          text: language,
          icon: Icons.chat_bubble_outline_rounded,
          applyIconColor: true),
    );
  }
  return example;
}
