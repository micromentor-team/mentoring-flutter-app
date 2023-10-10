import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../shared/expertise_chip.dart';

class RecommendedUserCard extends StatelessWidget {
  final String? avatarUrl;
  final String fullName;
  final String company;
  final int? endorsements;
  final List<String> expertises;
  final void Function()? onTap;

  static const double _recommendedUserCardWidth = 296;

  const RecommendedUserCard({
    Key? key,
    this.avatarUrl,
    required this.fullName,
    required this.company,
    this.endorsements,
    required this.expertises,
    this.onTap,
  }) : super(key: key);

  Column _getAvatar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
            child: Image(
              image: avatarUrl != null
                  ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                  : const AssetImage(Assets.blankAvatar),
              width: 96,
              height: 96,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Column _getUserInfo(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall, end: Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _recommendedUserCardWidth / 2,
            child: Text(
              fullName,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall, end: Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _recommendedUserCardWidth / 2,
            child: Text(
              company,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        if (endorsements != null)
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: Insets.paddingSmall, end: Insets.paddingSmall),
            //using SizedBox to prevent Text Overflow beyond the Card
            child: SizedBox(
              width: _recommendedUserCardWidth / 2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Insets.paddingExtraSmall),
                    child: Icon(
                      Icons.workspace_premium_outlined,
                      size: Insets.paddingMedium,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    l10n.exploreEndorsements(endorsements!),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Column _createExpertiseColumn(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          child: Text(
            l10n.expertises,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(Insets.paddingSmall, 0,
              Insets.paddingSmall, Insets.paddingMedium),
          child: SizedBox(
            width: _recommendedUserCardWidth,
            child: Wrap(
              children: _createExpertiseChips(context),
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _createExpertiseChips(context) {
    final ThemeData theme = Theme.of(context);

    List<Widget> rowChildren = [];
    for (String expertise in expertises) {
      rowChildren.addAll(
        [
          ExpertiseChip(
            expertise: expertise,
            icon: Icon(
              Icons.campaign_outlined,
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          const SizedBox(width: Insets.paddingExtraSmall),
        ],
      );
    }
    return rowChildren;
  }

  @override
  Widget build(BuildContext context) {
    Column expertiseColumn = _createExpertiseColumn(context);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: Elevations.level0,
      surfaceTintColor: Colors.transparent,
      color: colorScheme.surface,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.outlineVariant,
              width: Dimensions.highlightBorderWidth,
            ),
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusMedium),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.paddingExtraSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _getAvatar(),
                    _getUserInfo(context),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: Insets.paddingMedium, end: Insets.paddingMedium),
                  child: Divider(
                    color: theme.colorScheme.outlineVariant,
                  ),
                ),
                Row(
                  children: [
                    expertiseColumn,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
