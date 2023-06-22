import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MentorCard extends StatelessWidget {
  final String avatarUrl;
  final String mentorName;
  final String mentorBio;
  final List<String> mentorSkill;

  const MentorCard({
    Key? key,
    required this.avatarUrl,
    required this.mentorName,
    required this.mentorBio,
    required this.mentorSkill,
  }) : super(key: key);

  Column _getAvatar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.widgetSmallInset),
          child: CircleAvatar(
            radius: Radii.avatarRadiusLarge,
            child: CircleAvatar(
              radius: Radii.avatarRadiusMedium,
              backgroundImage: NetworkImage(avatarUrl.toString()),
            ),
          ),
        ),
      ],
    );
  }

  Column _getMentorInfo(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Chip> mentorSkills = _getMentorSkillChips(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Chip for "recommended"
        Chip(
          avatar: Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),

          //using ConstrainedBox to prevent Text Overflow beyond the Card
          label: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: Dimensions.chipMaxWidth,
            ),
            child: Text(
              l10n.recommendedMentorCardScrollable,
              style: TextStyles.smallTextButton(context),
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: Dimensions.chipVisualDensity,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),

        // Text for Mentor's Name
        Padding(
          padding: const EdgeInsets.all(Insets.widgetSmallInset),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: Dimensions.mentorCardWidth / 2,
            child: Expanded(
              child: Text(
                mentorName,
                style: TextStyles.cardTitle(context),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),

        // Text for Mentor's Skill
        Padding(
          padding: const EdgeInsets.all(Insets.widgetSmallInset),
          //using SizedBox to prevent Text Overflow beyond the Card
          child: SizedBox(
            width: Dimensions.mentorCardWidth / 2,
            child: Expanded(
              child: Text(
                mentorBio,
                style: TextStyles.cardSubtitle(context),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),

        //Assuming that only the first two skills are shown in this card
        mentorSkills[0],
        mentorSkills[1],
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
    return Chip(
      //using ConstrainedBox to prevent Text Overflow beyond the Card
      label: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: Dimensions.chipMaxWidth,
        ),
        child: Text(
          skill,
          style: TextStyles.mentorCardSubtitle(context),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      visualDensity: const VisualDensity(
        vertical: Dimensions.chipVisualDensity,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      side: BorderSide.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    Column avatarColumn = _getAvatar();
    Column mentorInfoColumn = _getMentorInfo(context);
    return Card(
      child: SizedBox(
        width: Dimensions.mentorCardWidth,
        height: Dimensions.mentorCardHeight,
        child: Row(
          children: [
            avatarColumn,
            mentorInfoColumn,
          ],
        ),
      ),
    );
  }
}
