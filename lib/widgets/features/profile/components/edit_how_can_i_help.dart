import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import 'big_profile_chip.dart';

class EditProfileHowCanIHelp extends StatelessWidget {
  final UserDetailedProfile userData;
  final List<String> expertises;
  final List<String> industries;
  final List<String> mentoringPreferences;

  const EditProfileHowCanIHelp({
    super.key,
    required this.userData,
    this.expertises = const [],
    this.industries = const [],
    this.mentoringPreferences = const [],
  });

  Widget _createChipsListTile(BuildContext context, Widget titleWidget,
      List<BigProfileChip> chips, String? nextPath) {
    final ThemeData theme = Theme.of(context);

    return ListTile(
      title: titleWidget,
      subtitle: Container(
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.primary, width: 0.4),
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ),
        child: Stack(children: [
          if (chips.isEmpty)
            const SizedBox(
              height: 40,
            ),
          Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: Wrap(
                children: [
                  for (var chip in chips)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          end: Insets.paddingExtraSmall),
                      child: chip,
                    )
                ],
              )),
          Positioned.fill(
              child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
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
          ))
        ]),
      ),

      // _cre=
    );
  }

  @override
  Widget build(BuildContext context) {
    final topThreeExpertises = expertises.take(Limits.profileExpertiseMaxSize);
    final additionalExpertises =
        (expertises.length > Limits.profileExpertiseMaxSize)
            ? expertises.sublist(Limits.profileExpertiseMaxSize)
            : [];
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditMainMentorHeader,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        _createChipsListTile(
          context,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileEditMainMentorExpertisesSection,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.primary),
              ),
              Text(
                l10n.profileEditMainMentorExpertisesHint,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.secondary),
              ),
            ],
          ),
          topThreeExpertises.map((e) => BigProfileChip(text: e)).toList(),
          Routes.profileEditExpertisesTop.path,
        ),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainMentorExpertisesAdditionalHint,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.secondary),
          ),
          additionalExpertises.map((e) => BigProfileChip(text: e)).toList(),
          Routes.profileEditExpertisesAdditional.path,
        ),
        const Divider(),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainMentorIndustriesSection,
            style: theme.textTheme.titleMedium!
                .copyWith(color: theme.colorScheme.primary),
          ),
          industries
              .map((e) => BigProfileChip(
                    text: e,
                  ))
              .toList(),
          Routes.profileEditIndustries.path,
        ),
        const Divider(),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainMentorPreferencesSection,
            style: theme.textTheme.titleMedium!
                .copyWith(color: theme.colorScheme.primary),
          ),
          mentoringPreferences.map((e) => BigProfileChip(text: e)).toList(),
          Routes.profileEditMentoringPreferences.path,
        ),
      ],
    );
  }
}
