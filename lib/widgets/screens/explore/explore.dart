import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<StatefulWidget> createState() => _Explore();
}

class _Explore extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    //TODO: Replace this entire widget tree with the frame for the Explore page
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Insets.appEdgeInsetCompact),
        child: ListView(
          children: const [
            // Example: Recommended entrepreneur
            ProfileQuickViewCard(
              isRecommended: true,
              userType: UserType.entrepreneur,
              avatarUrl:
                  'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
              fullName: 'Azadeh Sana',
              location: 'Memphis, Tennessee, USA',
              company: 'St James Place',
              ventureStage: ProfileChip(
                text: 'Operational',
                icon: Icon(Icons.lightbulb_outline),
              ),
              ventureIndustry: ProfileChip(text: 'NonProfit/Social Enterprise'),
              skills: [
                SkillChip(
                  skill: 'Marketing',
                  icon: Icon(Icons.people_alt_outlined),
                ),
                SkillChip(
                  skill: 'Operations',
                  icon: Icon(Icons.settings_applications_outlined),
                ),
                SkillChip(
                  skill: 'Starting Up',
                  icon: Icon(Icons.rocket_outlined),
                ),
              ],
            ),
            // Example: Recommended mentor
            ProfileQuickViewCard(
              isRecommended: true,
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
                  icon: Icon(Icons.people_alt_outlined),
                ),
                SkillChip(
                  skill: 'Operations',
                  icon: Icon(Icons.settings_applications_outlined),
                ),
                SkillChip(
                  skill: 'Starting Up',
                  icon: Icon(Icons.rocket_outlined),
                ),
              ],
            ),
            // Example: Regular mentor
            ProfileQuickViewCard(
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
                  icon: Icon(Icons.people_alt_outlined),
                ),
                SkillChip(
                  skill: 'Operations',
                  icon: Icon(Icons.settings_applications_outlined),
                ),
                SkillChip(
                  skill: 'Starting Up',
                  icon: Icon(Icons.rocket_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
