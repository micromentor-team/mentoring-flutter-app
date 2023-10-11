import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../shared/expertise_chip.dart';

class RecommendedUserCard extends StatelessWidget {
  final String? avatarUrl;
  final String fullName;
  final String? jobTitle;
  final String? company;
  final int? endorsements;
  final List<String> expertises;
  final UserType userType;
  final void Function()? onTap;

  static const double _recommendedUserCardWidth = 320;
  static const double _minimumRecommendedUserCardHeight = 252;

  const RecommendedUserCard({
    super.key,
    this.avatarUrl,
    required this.fullName,
    this.jobTitle,
    required this.company,
    this.endorsements,
    required this.expertises,
    required this.userType,
    this.onTap,
  });

  Widget _getAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
      child: Image(
        image: avatarUrl != null
            ? NetworkImage(avatarUrl!) as ImageProvider<Object>
            : const AssetImage(Assets.blankAvatar),
        width: 96,
        height: 96,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _getUserInfo(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fullName,
          style: theme.textTheme.titleSmall?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (company != null) ...[
          const SizedBox(height: Insets.paddingSmall),
          Text(
            _companyText(l10n),
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        if (endorsements != null && endorsements! > 0) ...[
          const SizedBox(height: Insets.paddingSmall),
          Row(
            children: [
              Icon(
                Icons.workspace_premium_outlined,
                size: Insets.paddingMedium,
                color: theme.colorScheme.onSurface,
              ),
              const SizedBox(width: Insets.paddingSmall),
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
        ],
      ],
    );
  }

  Widget _createExpertisesWidget(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final bool isEntrepreneur = userType == UserType.entrepreneur;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isEntrepreneur
              ? l10n.homeRecommendedExpertiseEntrepreneur
              : l10n.homeRecommendedExpertiseMentor,
          style: theme.textTheme.titleSmall?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          softWrap: true,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: Insets.paddingSmall),
        Wrap(
          children: _createExpertiseChips(context),
        ),
      ],
    );
  }

  List<Widget> _createExpertiseChips(context) {
    final ThemeData theme = Theme.of(context);

    List<Widget> rowChildren = [];
    for (String expertise in expertises.take(
      Limits.expertisesQuickViewMaxChips,
    )) {
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

  String _companyText(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return '${l10n.exploreEntrepreneurVenture} $company';
      case UserType.mentor:
        return [jobTitle, company].nonNulls.join(l10n.listSeparator);
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
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
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: _minimumRecommendedUserCardHeight,
              minWidth: _recommendedUserCardWidth,
              maxWidth: _recommendedUserCardWidth,
            ),
            child: Padding(
              padding: const EdgeInsets.all(Insets.paddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _getAvatar(),
                      const SizedBox(width: Insets.paddingMedium),
                      Expanded(
                        child: _getUserInfo(context),
                      ),
                    ],
                  ),
                  if (expertises.isNotEmpty) ...[
                    const SizedBox(height: Insets.paddingMedium),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: theme.colorScheme.outlineVariant,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Insets.paddingMedium),
                    Wrap(
                      children: [
                        _createExpertisesWidget(context),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
