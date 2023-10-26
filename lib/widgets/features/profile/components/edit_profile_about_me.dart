import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';

class EditProfileAboutMe extends StatelessWidget {
  final UserDetailedProfile userData;
  final String? pronouns;
  final String? regionOfResidence;
  final String? cityOfResidence;
  final String? countryOfResidence;
  final String? regionFrom;
  final String? cityFrom;
  final String? countryFrom;
  final String? linkedinUrl;
  final String? preferredLanguage;
  final List<String> spokenLanguages;

  const EditProfileAboutMe({
    super.key,
    required this.userData,
    this.pronouns,
    this.regionOfResidence,
    this.cityOfResidence,
    this.countryOfResidence,
    this.regionFrom,
    this.cityFrom,
    this.countryFrom,
    this.linkedinUrl,
    this.preferredLanguage,
    this.spokenLanguages = const [],
  });

  Widget _createListTileSection(
      BuildContext context, String title, String? content, String? nextPath) {
    final theme = Theme.of(context);
    return content != null
        ? ListTile(
            title: Text(
              title,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.primary),
            ),
            subtitle: Text(
              content,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: theme.colorScheme.onBackground),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () {
                if (nextPath != null) {
                  context.push(
                    nextPath,
                    extra: userData,
                  );
                }
              },
            ),
          )
        : const SizedBox(height: 0, width: 0);
  }

  Widget _createLinkedInSection(
      BuildContext context, String? linkedInUrl, String? nextPath) {
    final theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    String titleText = linkedInUrl != null
        ? l10n.profileEditMainAboutLinkedInConfirmationSection
        : l10n.profileEditMainAboutLinkedInPromptSection;

    return ListTile(
      title: Wrap(
        children: [
          if (linkedinUrl != null) ...[
            Icon(Icons.check_circle_outline, color: theme.colorScheme.primary),
            const SizedBox(
              width: Insets.paddingSmall,
            ),
          ],
          Text(
            titleText,
            style: theme.textTheme.titleMedium!
                .copyWith(color: theme.colorScheme.primary),
          )
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.navigate_next),
        onPressed: () {
          if (nextPath != null) {
            context.push(
              nextPath,
              extra: userData,
            );
          }
        },
      ),
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
    final String otherLanguages = spokenLanguages.join(l10n.listSeparator);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditMainAboutHeader,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        _createListTileSection(
          context,
          l10n.profileEditMainAboutPronounsSection,
          pronouns,
          Routes.profileEditPronouns.path,
        ),
        const Divider(),
        _createLinkedInSection(
            context, linkedinUrl, Routes.profileEditLinkedin.path),
        const Divider(),
        _createListTileSection(
            context,
            l10n.profileEditMainAboutCurrentLocationSection,
            livesInLocation,
            Routes.profileEditCurrentLocation.path),
        const Divider(),
        _createListTileSection(
            context,
            l10n.profileEditMainAboutOriginLocationSection,
            fromLocation,
            Routes.profileEditOriginLocation.path),
        const Divider(),
        _createListTileSection(
          context,
          l10n.profileEditMainAboutLanguagePreferredSection,
          preferredLanguage,
          Routes.profileEditLanguagePreferred.path,
        ),
        const Divider(),
        _createListTileSection(
            context,
            l10n.profileEditMainAboutLanguageOthersSection,
            otherLanguages,
            Routes.profileEditLanguageOthers.path),
      ],
    );
  }
}
