import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class MentorCard extends StatelessWidget {
  final String? avatarUrl;
  final String mentorName;
  final String mentorBio;
  final int? mentorEndorsements;
  final List<String> mentorSkill;
  final void Function()? onTap;

  static const double _mentorCardHeight = 240;
  static const double _mentorCardWidth = 296;

  const MentorCard({
    Key? key,
    this.avatarUrl,
    required this.mentorName,
    required this.mentorBio,
    this.mentorEndorsements,
    required this.mentorSkill,
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
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Column _getMentorInfo(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text for Mentor's Name
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall, end: Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _mentorCardWidth / 2,
            child: Flexible(
              child: Text(
                mentorName,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),

        // Text for Mentor's Bio
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall, end: Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _mentorCardWidth / 2,
            child: Flexible(
              child: Text(
                mentorBio,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),

        //Section for mentor's endorsements
        if (mentorEndorsements != null)
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: Insets.paddingSmall, end: Insets.paddingSmall),
            //using SizedBox to prevent Text Overflow beyond the Card
            child: SizedBox(
              width: _mentorCardWidth / 2,
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
                  Flexible(
                    child: Text(
                      l10n.exploreEndorsements(mentorEndorsements!),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Column _getMentorExpertiseColumn(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Column avatarColumn = _getAvatar();
    Column mentorInfoColumn = _getMentorInfo(context);
    Column mentorExpertiseColumn = _getMentorExpertiseColumn(context);
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.only(end: Insets.paddingSmall),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.colorScheme.outlineVariant,
          ),
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: SizedBox(
              width: _mentorCardWidth,
              height: _mentorCardHeight,
              child: Column(
                children: [
                  Row(
                    children: [
                      avatarColumn,
                      mentorInfoColumn,
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
                      mentorExpertiseColumn,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
