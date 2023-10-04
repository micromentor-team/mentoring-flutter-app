import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';

import '../../constants/app_constants.dart';
import '../atoms/skill_chip.dart';

/*
 * 
 * Profile quick view helper class and functions
 */
class ProfileQuickViewInfo {
  final String userId;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String? groupMembership;
  final String location;
  final String? company;
  final String? companyRole;
  final int? endorsements;
  final List<ExpertiseChip> expertises;

  const ProfileQuickViewInfo({
    required this.userId,
    required this.userType,
    required this.avatarUrl,
    required this.fullName,
    required this.location,
    this.groupMembership,
    this.company,
    this.companyRole,
    this.endorsements,
    required this.expertises,
  });
}

ProfileQuickViewCard createProfileCardFromInfo({
  required ProfileQuickViewInfo info,
}) {
  return ProfileQuickViewCard(
    userId: info.userId,
    userType: info.userType,
    avatarUrl: info.avatarUrl,
    fullName: info.fullName,
    groupMembership: info.groupMembership,
    location: info.location,
    company: info.company,
    companyRole: info.companyRole,
    endorsements: info.endorsements,
    expertises: info.expertises,
  );
}

class ProfileQuickViewCard extends StatelessWidget {
  static int maxExpertiseChips = 3;

  final String userId;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String? groupMembership;
  final String location;
  final String? company;
  final String? companyRole;
  final int? endorsements;
  final List<ExpertiseChip> expertises;

  const ProfileQuickViewCard({
    Key? key,
    required this.userId,
    required this.userType,
    this.avatarUrl,
    required this.fullName,
    this.groupMembership,
    required this.location,
    this.company,
    this.companyRole,
    this.endorsements,
    this.expertises = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: Elevations.level0,
      child: InkWell(
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.outlineVariant,
              width: Dimensions.highlightBorderWidth,
            ),
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusMedium),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.paddingLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _createProfileView(context, l10n),
                if (expertises.isNotEmpty) _createSkillsFooter(context, l10n),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createProfileView(BuildContext context, AppLocalizations l10n) {
    final ThemeData theme = Theme.of(context);
    final String? companyText = _companyText(l10n);
    final GoRouter router = GoRouter.of(context);
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              fullName,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  router.push('${Routes.profile.path}/$userId');
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: theme.colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.paddingExtraSmall,
            bottom: Insets.paddingExtraSmall,
          ),
          child: Divider(
            color: theme.colorScheme.outlineVariant,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                Radii.roundedRectRadiusMedium,
              ),
              child: Image(
                image: avatarUrl != null
                    ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                    : const AssetImage(Assets.blankAvatar),
                width: 80.0,
                height: 80.0, // Height of the avatar
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: Insets.paddingMedium),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (groupMembership != null)
                    ProfileChip(
                      text: groupMembership!,
                      groupMemberChip: true,
                    ),
                  const SizedBox(height: Insets.paddingExtraSmall),
                  if (companyText != null)
                    Text(
                      companyText,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onBackground,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  const SizedBox(height: Insets.paddingExtraSmall),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Insets.paddingExtraSmall),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: Insets.paddingMedium,
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          location,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onBackground,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _createEndorsements(l10n, theme),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _createSkillsFooter(BuildContext context, AppLocalizations l10n) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.paddingExtraSmall,
          ),
          child: Divider(
            color: theme.colorScheme.outlineVariant,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.paddingExtraSmall,
            bottom: Insets.paddingExtraSmall,
          ),
          child: Text(
            _expertiseText(l10n)!,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Wrap(
          children: _createSkillChips(l10n),
        )
      ],
    );
  }

  List<Widget> _createSkillChips(l10n) {
    final List<ExpertiseChip> topSkills =
        expertises.take(maxExpertiseChips).toList();
    List<Widget> rowChildren = [topSkills.first];
    for (int i = 1; i < topSkills.length; i++) {
      rowChildren.addAll(
        [
          const SizedBox(width: Insets.paddingExtraSmall),
          topSkills[i],
        ],
      );
    }
    return rowChildren;
  }

  String? _expertiseText(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return l10n.exploreExpertiseSeeking;
      case UserType.mentor:
        return l10n.exploreExpertiseOffering;
      default:
        return null;
    }
  }

  String? _companyText(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return '${l10n.exploreEntrepreneurVenture} $company';
      case UserType.mentor:
        return companyRole != null ? '$companyRole, $company' : company;
      default:
        return company;
    }
  }

  Widget _createEndorsements(AppLocalizations l10n, ThemeData theme) {
    if (endorsements == null || endorsements == 0) {
      return const SizedBox(width: 0, height: 0);
    }
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.paddingExtraSmall),
          child: Icon(
            Icons.workspace_premium_outlined,
            size: Insets.paddingMedium,
            color: theme.colorScheme.onSurface,
          ),
        ),
        Flexible(
          child: Text(
            l10n.exploreEndorsements(endorsements!),
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        )
      ],
    );
  }
}
