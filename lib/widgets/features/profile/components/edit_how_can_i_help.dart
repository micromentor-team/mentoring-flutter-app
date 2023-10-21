import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/big_profile_chip.dart';

class EditProfileHowCanIHelp extends StatelessWidget {
  final List<String> expertises;
  final List<String> industries;
  final List<String> mentoringPreferences;
  final String? expectations;

  const EditProfileHowCanIHelp({
    super.key,
    this.expertises = const [],
    this.industries = const [],
    this.mentoringPreferences = const [],
    this.expectations,
  });

  Widget _createListTileSection(
      BuildContext context, String title, String content, String? nextPath) {
    final theme = Theme.of(context);
    return ListTile(
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
            context.push(nextPath);
          }
        },
      ),
    );
  }

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
                  context.push(nextPath);
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
    final topThreeExpertises = expertises.take(3);
    final additionalExpertises =
        (expertises.length > 3) ? expertises.sublist(3) : [];
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditHowCanIHelp,
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
                l10n.profileEditExpertises,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.primary),
              ),
              Text(
                l10n.profileEditExpertisesHint,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.secondary),
              ),
            ],
          ),
          topThreeExpertises.map((e) => BigProfileChip(text: e)).toList(),
          null,
        ),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditExpertisesAdditionalHint,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.secondary),
          ),
          additionalExpertises.map((e) => BigProfileChip(text: e)).toList(),
          null,
        ),
        const Divider(),
        _createChipsListTile(
            context,
            Text(
              l10n.profileEditIndustries,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.primary),
            ),
            industries
                .map((e) => BigProfileChip(
                      text: e,
                    ))
                .toList(),
            null),
        const Divider(),
        _createChipsListTile(
            context,
            Text(
              l10n.profileEditMentoringPreferences,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.primary),
            ),
            mentoringPreferences.map((e) => BigProfileChip(text: e)).toList(),
            null),
        const Divider(),
        _createListTileSection(context, l10n.profileEditExpectations,
            (expectations != null) ? expectations! : "", null),
      ],
    );
  }
}
