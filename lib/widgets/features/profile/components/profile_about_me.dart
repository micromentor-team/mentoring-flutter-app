import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/profile_chip.dart';

class ProfileAboutMe extends StatelessWidget {
  final String? regionOfResidence;
  final String? cityOfResidence;
  final String? countryOfResidence;
  final String? regionFrom;
  final String? cityFrom;
  final String? countryFrom;
  final String promptTitle;
  final String promptResponse;
  final List<String> languages;

  const ProfileAboutMe({
    super.key,
    this.regionOfResidence,
    this.cityOfResidence,
    this.countryOfResidence,
    this.regionFrom,
    this.cityFrom,
    this.countryFrom,
    required this.promptTitle,
    required this.promptResponse,
    this.languages = const [],
  });

  Widget _createChipsSection(
    BuildContext context,
    String? title,
    List<ProfileChip> chips,
  ) {
    final theme = Theme.of(context);

    return chips.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
              const SizedBox(height: Insets.paddingExtraSmall),
              Wrap(
                children: [
                  for (var chip in chips)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: Insets.paddingExtraSmall,
                      ),
                      child: chip,
                    )
                ],
              )
            ],
          )
        : const SizedBox(height: 0, width: 0);
  }

  Widget _createPromptSection(
    BuildContext context,
    String title,
    String content,
  ) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final String livesInLocation = [
      regionOfResidence,
      cityOfResidence,
      countryOfResidence,
    ].nonNulls.toList().join(l10n.listSeparator);
    final String fromLocation = [
      regionFrom,
      cityFrom,
      countryFrom,
    ].nonNulls.join(l10n.listSeparator);
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
                l10n.profileViewAboutMe,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(
                context,
                null,
                _createLocationChips(
                  l10n,
                  livesInLocation,
                  fromLocation,
                ),
              ),
              const SizedBox(height: Insets.paddingSmall),
              if (languages.isNotEmpty) ...[
                _createChipsSection(
                  context,
                  l10n.profileViewMyLanguages,
                  _createLanguageChips(languages),
                ),
                const SizedBox(height: Insets.paddingSmall),
              ],
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.paddingSmall,
            vertical: Insets.paddingSmall,
          ),
          child: _createPromptSection(
            context,
            promptTitle,
            promptResponse,
          ),
        ),
      ],
    );
  }
}

List<ProfileChip> _createLocationChips(
  AppLocalizations l10n,
  String? livesInLocation,
  String? fromLocation,
) {
  List<ProfileChip> example = [
    if (livesInLocation != null && livesInLocation.isNotEmpty)
      ProfileChip(
        text: l10n.profileViewAboutLivesIn(livesInLocation),
        icon: Icons.flag,
        applyIconColor: true,
      ),
    if (fromLocation != null && fromLocation.isNotEmpty)
      ProfileChip(
        text: l10n.profileViewAboutFrom(fromLocation),
        icon: Icons.flag,
        applyIconColor: true,
      ),
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
        applyIconColor: true,
      ),
    );
  }
  return example;
}
