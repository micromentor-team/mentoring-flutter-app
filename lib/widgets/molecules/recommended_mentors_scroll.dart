import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_card.dart';

import '../atoms/rectangle_button.dart';

class RecommendedMentorsScroll extends StatelessWidget {
  const RecommendedMentorsScroll({Key? key}) : super(key: key);

  List<MentorCard> _createMentorCards() {
    List<MentorCard> recommendedMentors = [];
    recommendedMentors.addAll(
      [
        const MentorCard(
            avatarUrl:
                'https://media.istockphoto.com/id/1307694427/photo/portrait-of-businessman-in-glasses-holding-smartphone-in-hand.jpg?s=612x612&w=0&k=20&c=P4FDNemdXlXQi3O_yLePrJVzuTYmJx84-iIySj91fGQ=',
            mentorName: 'Tamar Levi',
            mentorBio: 'CEO, Levi Consulting',
            mentorSkill: ['Marketing for a startup', 'Operations']),
        const MentorCard(
            avatarUrl:
                'https://www.blackenterprise.com/wp-content/blogs.dir/1/files/2019/06/iStock-525366712-e1571237677235.jpg',
            mentorName: 'Antoine Mousa',
            mentorBio: 'Founder, VisionForward',
            mentorSkill: ['Marketing', 'Starting Up']),
        const MentorCard(
            avatarUrl:
                'https://media.istockphoto.com/id/1280371040/photo/confident-stylish-european-mature-middle-aged-woman-standing-at-workplace-stylish-older.jpg?s=612x612&w=0&k=20&c=AntzoG_Z1hN6tYVBXbu58Rvz4jweBYa8669bV75yWRw=',
            mentorName: 'Emily Marshall',
            mentorBio: 'Director of Marketing, MarketMe',
            mentorSkill: ['Marketing', 'Management']),
      ],
    );
    return recommendedMentors;

    //TODO(gupta-rupal): Fetch data from backend instead of using hardcoded mocks.
  }

  @override
  Widget build(BuildContext context) {
    List<MentorCard> recommendedMentorCards = _createMentorCards();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.widgetSmallInset),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.widgetSmallInset,
                ),
                child: Row(
                  children: recommendedMentorCards,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(children: [
      const RecommendedMentorsScroll(),
      Padding(
          padding: const EdgeInsets.all(Insets.widgetMediumInset),
          child: Container(
              width: 200,
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.search),
                onPressed: () => {debugPrint("hi")},
                label: Text(l10n.homeFindMoreMentors),
              )))
    ]);
  }
}
