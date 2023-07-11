import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';

import '../../constants/app_constants.dart';
import '../atoms/skill_chip.dart';

class ProfileQuickViewCard extends StatelessWidget {
  static int maxSkillChips = 3;

  final bool isRecommended;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String location;
  final String company;
  final String? companyRole;
  final ProfileChip? ventureStage;
  final ProfileChip? ventureIndustry;
  final int? endorsements;
  final List<SkillChip> skills;

  const ProfileQuickViewCard({
    Key? key,
    this.isRecommended = false,
    required this.userType,
    this.avatarUrl,
    required this.fullName,
    required this.location,
    required this.company,
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
    return Card(
      color: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: Elevations.level2,
      child: InkWell(
        child: Ink(
          decoration: isRecommended
              ? BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    width: Dimensions.highlightBorderWidth,
                  ),
                  borderRadius: BorderRadius.circular(Radii.roundedRectRadius),
                )
              : null,
          child: Padding(
            padding: const EdgeInsets.all(Insets.widgetMediumInset),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isRecommended) _createRecommendedHeader(context, l10n),
                _createProfileView(context, l10n),
                if (skills.isNotEmpty) _createSkillsFooter(context, l10n),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createRecommendedHeader(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.widgetSmallInset),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: Insets.widgetSmallInset),
          Text(
            l10n.exploreRecommended,
            style: TextStyles.sectionSubHeader(context),
          ),
        ],
      ),
    );
  }

  Widget _createProfileView(BuildContext context, AppLocalizations l10n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            Radii.roundedRectRadius,
          ),
          child: Image(
            image: avatarUrl != null
                ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                : const AssetImage(Assets.blankAvatar),
            width: Dimensions.quickViewProfileAvatarLength,
            height:
                Dimensions.quickViewProfileAvatarLength, // Height of the avatar
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: Insets.widgetMediumInset),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: fullName,
                  style: TextStyles.quickViewProfileCardHighEmphasis(context)
                      ?.copyWith(height: 1.4),
                  children: [
                    TextSpan(
                      text: ' ${_userTypeTag(l10n)}',
                      style: TextStyles.quickViewProfileCardMediumEmphasis(
                        context,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: Insets.widgetSmallestInset),
              Text(
                location,
                style: TextStyles.quickViewProfileCardLowEmphasis(context),
              ),
              const Divider(
                endIndent: Insets.widgetLargeInset,
              ),
              Text(
                _companyText(l10n),
                style: TextStyles.quickViewProfileCardMediumEmphasis(context),
              ),
              const SizedBox(height: Insets.widgetSmallestInset),
              _createProfileChips(l10n),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createSkillsFooter(BuildContext context, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.widgetMediumInset,
            bottom: Insets.widgetSmallestInset,
          ),
          child: Text(
            _expertiseText(l10n)!,
            style: TextStyles.quickViewProfileSkillsFooter(context),
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
          const SizedBox(width: Insets.widgetSmallestInset),
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

  String _companyText(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return '${l10n.exploreEntrepreneurVenture} $company';
      case UserType.mentor:
        return companyRole != null ? '$companyRole, $company' : company;
      default:
        return company;
    }
  }

  Widget _createProfileChips(AppLocalizations l10n) {
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
        return ProfileChip(
          icon: const Icon(Icons.verified_outlined),
          text: l10n.exploreEndorsements(endorsements!),
        );
      default:
        return const SizedBox(width: 0, height: 0);
    }
  }
}
