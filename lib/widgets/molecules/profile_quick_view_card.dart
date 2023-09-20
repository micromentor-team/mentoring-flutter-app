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
  final bool isRecommended;
  final String userId;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String location;
  final String? company;
  final String? companyRole;
  final ProfileChip? ventureStage;
  final ProfileChip? ventureIndustry;
  final int? endorsements;
  final List<SkillChip> skills;

  const ProfileQuickViewInfo({
    required this.isRecommended,
    required this.userId,
    required this.userType,
    required this.avatarUrl,
    required this.fullName,
    required this.location,
    this.company,
    this.companyRole,
    this.ventureStage,
    this.ventureIndustry,
    this.endorsements,
    required this.skills,
  });
}

ProfileQuickViewInfo createRecommendedMentorExample() {
  return const ProfileQuickViewInfo(
      isRecommended: true,
      userId: '',
      userType: UserType.mentor,
      avatarUrl:
          'https://media.istockphoto.com/id/1280371040/photo/confident-stylish-european-mature-middle-aged-woman-standing-at-workplace-stylish-older.jpg?s=612x612&w=0&k=20&c=AntzoG_Z1hN6tYVBXbu58Rvz4jweBYa8669bV75yWRw=',
      fullName: 'Delia Joyce',
      location: 'Shaker Heights, Ohio, USA',
      company: 'SparkNow',
      companyRole: 'Founder',
      endorsements: 7,
      skills: [
        SkillChip(
          skill: 'Marketing',
        ),
        SkillChip(
          skill: 'Operations',
        ),
        SkillChip(
          skill: 'Starting Up',
        ),
      ]);
}

ProfileQuickViewInfo createRegularMentorExample() {
  return const ProfileQuickViewInfo(
      isRecommended: false,
      userId: '',
      userType: UserType.mentor,
      avatarUrl:
          'https://media.istockphoto.com/id/1307694427/photo/portrait-of-businessman-in-glasses-holding-smartphone-in-hand.jpg?s=612x612&w=0&k=20&c=P4FDNemdXlXQi3O_yLePrJVzuTYmJx84-iIySj91fGQ=',
      fullName: 'Jenika Chua',
      location: 'Shaker Heights, Ohio, USA',
      company: 'SparkNow',
      companyRole: 'Founder',
      endorsements: 7,
      skills: [
        SkillChip(
          skill: 'Marketing',
        ),
        SkillChip(
          skill: 'Operations',
        ),
        SkillChip(
          skill: 'Starting Up',
        ),
      ]);
}

ProfileQuickViewInfo createRecommendedEntrepreneurExample() {
  return const ProfileQuickViewInfo(
      isRecommended: true,
      userId: '',
      userType: UserType.entrepreneur,
      avatarUrl:
          'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
      fullName: 'Azadeh Sana',
      location: 'Memphis, Tennessee, USA',
      company: 'St James Place',
      ventureStage: ProfileChip(
        text: 'Operational',
        icon: Icons.lightbulb_outline,
      ),
      ventureIndustry: ProfileChip(text: 'NonProfit/Social Enterprise'),
      skills: [
        SkillChip(
          skill: 'Marketing',
        ),
        SkillChip(
          skill: 'Operations',
        ),
        SkillChip(
          skill: 'Starting Up',
        ),
      ]);
}

ProfileQuickViewCard createProfileCardFromInfo({
  required ProfileQuickViewInfo info,
}) {
  return ProfileQuickViewCard(
    isRecommended: info.isRecommended,
    userId: info.userId,
    userType: info.userType,
    avatarUrl: info.avatarUrl,
    fullName: info.fullName,
    location: info.location,
    company: info.company,
    companyRole: info.companyRole,
    ventureStage: info.ventureStage,
    ventureIndustry: info.ventureIndustry,
    endorsements: info.endorsements,
    skills: info.skills,
  );
}

class ProfileQuickViewCard extends StatelessWidget {
  static int maxSkillChips = 3;

  final bool isRecommended;
  final String userId;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String location;
  final String? company;
  final String? companyRole;
  final ProfileChip? ventureStage;
  final ProfileChip? ventureIndustry;
  final int? endorsements;
  final List<SkillChip> skills;

  const ProfileQuickViewCard({
    Key? key,
    this.isRecommended = false,
    required this.userId,
    required this.userType,
    this.avatarUrl,
    required this.fullName,
    required this.location,
    this.company,
    this.companyRole,
    this.ventureStage,
    this.ventureIndustry,
    this.endorsements,
    this.skills = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final GoRouter router = GoRouter.of(context);
    return Card(
      color: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: Elevations.level0,
      child: InkWell(
        child: Ink(
          decoration: isRecommended
              ? BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    width: Dimensions.highlightBorderWidth,
                  ),
                  borderRadius:
                      BorderRadius.circular(Radii.roundedRectRadiusMedium),
                )
              : BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    width: 1.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(Radii.roundedRectRadiusMedium),
                ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingMedium),
                  child: TextButton(
                    onPressed: () {
                      router.push('${Routes.profile.path}/$userId');
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.paddingLarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isRecommended) _createRecommendedHeader(context, l10n),
                    _createProfileView(context, l10n),
                    if (skills.isNotEmpty) _createSkillsFooter(context, l10n),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createRecommendedHeader(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.paddingSmall),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: Insets.paddingSmall),
          Text(
            l10n.exploreRecommended,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createProfileView(BuildContext context, AppLocalizations l10n) {
    final ThemeData theme = Theme.of(context);
    final String? companyText = _companyText(l10n);
    return Row(
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
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: fullName,
                  style: theme.textTheme.labelSmall?.copyWith(
                    height: 1.4,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                  children: [
                    TextSpan(
                      text: ' ${_userTypeTag(l10n)}',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: Insets.paddingExtraSmall),
              if (companyText != null)
                Text(
                  companyText,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.secondary,
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
                  Text(
                    location,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onBackground,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              _createProfileChips(l10n, theme),
            ],
          ),
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
            endIndent: Insets.paddingExtraLarge,
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
    final List<SkillChip> topSkills = skills.take(maxSkillChips).toList();
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

  String _userTypeTag(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return l10n.exploreUserTypeEntrepreneur;
      case UserType.mentor:
        return l10n.exploreUserTypeMentor;
      default:
        return '';
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

  Widget _createProfileChips(AppLocalizations l10n, ThemeData theme) {
    switch (userType) {
      case UserType.entrepreneur:
        if (ventureStage == null && ventureIndustry == null) {
          return const SizedBox(width: 0, height: 0);
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ventureStage != null) ventureStage!,
            if (ventureIndustry != null) ventureIndustry!,
          ],
        );
      case UserType.mentor:
        if (endorsements == null) {
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
            Text(
              l10n.exploreEndorsements(endorsements!),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            )
          ],
        );
      // return ProfileChip(
      //   icon: Icons.verified_outlined,
      //   text: l10n.exploreEndorsements(endorsements!),
      // );
      default:
        return const SizedBox(width: 0, height: 0);
    }
  }
}
