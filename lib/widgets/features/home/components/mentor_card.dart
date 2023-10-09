import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class MentorCard extends StatelessWidget {
  final String? avatarUrl;
  final String mentorName;
  final String mentorBio;
  final List<String> mentorSkill;
  final void Function()? onTap;

  static const double _mentorCardHeight = 170;
  static const double _mentorCardWidth = 260;
  static const double _chipMaxWidth = 100;

  const MentorCard({
    Key? key,
    this.avatarUrl,
    required this.mentorName,
    required this.mentorBio,
    required this.mentorSkill,
    this.onTap,
  }) : super(key: key);

  Column _getAvatar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          child: CircleAvatar(
            radius: Radii.avatarRadiusLarge,
            child: CircleAvatar(
              radius: Radii.avatarRadiusMedium,
              backgroundImage: avatarUrl != null
                  ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                  : const AssetImage(Assets.blankAvatar),
            ),
          ),
        ),
      ],
    );
  }

  Column _getMentorInfo(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Chip> mentorSkills = _getMentorSkillChips(context);
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Chip for "recommended"
        Chip(
          avatar: Icon(
            Icons.star,
            color: theme.colorScheme.inversePrimary,
          ),

          //using ConstrainedBox to prevent Text Overflow beyond the Card
          label: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: _chipMaxWidth,
            ),
            child: Text(
              l10n.recommendedMentorCardScrollable,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),

        // Text for Mentor's Name
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _mentorCardWidth / 2,
            child: Text(
              mentorName,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.secondary,
              ),
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),

        // Text for Mentor's Skill
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: _mentorCardWidth / 2,
            child: Text(
              mentorBio,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.tertiary,
              ),
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),

        //Assuming that only the first two skills are shown in this card
        if (mentorSkills.isNotEmpty) mentorSkills[0],
        if (mentorSkills.length > 1) mentorSkills[1],
      ],
    );
  }

  List<Chip> _getMentorSkillChips(BuildContext context) {
    List<Chip> mentorSkillChips = [];

    //if no skills, show nothing
    if (mentorSkill.isEmpty) {
      return mentorSkillChips;
    }
    //dynamically add skill chips
    for (int i = 0; i < mentorSkill.length; i++) {
      mentorSkillChips.add(
        _createSkillChip(
          mentorSkill[i],
          context,
        ),
      );
    }
    return mentorSkillChips;
  }

  //TODO(guptarupal): Make the chip "style" defined in styles.dart
  Chip _createSkillChip(String skill, BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Chip(
      //using ConstrainedBox to prevent Text Overflow beyond the Card
      label: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: _chipMaxWidth,
        ),
        child: Text(
          skill,
          style: theme.textTheme.labelSmall
              ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      visualDensity: const VisualDensity(
        vertical: -4,
      ),
      backgroundColor: theme.colorScheme.tertiaryContainer,
      side: BorderSide.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    Column avatarColumn = _getAvatar();
    Column mentorInfoColumn = _getMentorInfo(context);
    return Card(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: _mentorCardWidth,
          height: _mentorCardHeight,
          child: Row(
            children: [
              avatarColumn,
              mentorInfoColumn,
            ],
          ),
        ),
      ),
    );
  }
}
