import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';

class HowCanIHelpSection extends StatelessWidget {
  final List<String> expertises;
  final List<String> industries;
  final List<String> mentoringPreferences;
  final String expectations;

  const HowCanIHelpSection({
    super.key,
    required this.expertises,
    required this.industries,
    required this.mentoringPreferences,
    required this.expectations,
  });

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
      ],
    );
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
      ],
    );
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
              horizontal: Insets.paddingMedium, vertical: Insets.paddingSmall),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileHowCanIHelp,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(
                context,
                l10n.profileHowCanIHelpExpertises,
                expertises.map((e) => ProfileChip(text: e)).toList(),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(
                context,
                l10n.profileHowCanIHelpIndustries,
                industries.map((e) => ProfileChip(text: e)).toList(),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createChipsSection(
                context,
                l10n.profileHowCanIHelpPreferences,
                mentoringPreferences.map((e) => ProfileChip(text: e)).toList(),
              ),
              const SizedBox(height: Insets.paddingSmall),
              _createTextSection(
                context,
                l10n.profileHowCanIHelpExpectations,
                expectations,
              )
            ],
          ),
        ),
      ],
    );
  }
}
