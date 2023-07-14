import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/molecules/explore_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';

class _ProfileQuickViewInfo {
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

  const _ProfileQuickViewInfo({
    required this.isRecommended,
    required this.userType,
    required this.avatarUrl,
    required this.fullName,
    required this.location,
    required this.company,
    this.companyRole,
    this.ventureStage,
    this.ventureIndustry,
    this.endorsements,
    required this.skills,
  });
}

_ProfileQuickViewInfo _createRecommendedMentorExample() {
  return const _ProfileQuickViewInfo(
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
      ]);
}

_ProfileQuickViewInfo _createRegularMentorExample() {
  return const _ProfileQuickViewInfo(
      isRecommended: false,
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
      ]);
}

_ProfileQuickViewInfo _createRecommendedEntrepreneurExample() {
  return const _ProfileQuickViewInfo(
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
      ]);
}

ProfileQuickViewCard _createProfilCardFromInfoAndCheckbox({
  required _ProfileQuickViewInfo info,
  required Checkbox checkbox,
}) {
  return ProfileQuickViewCard(
    checkbox: checkbox,
    isRecommended: info.isRecommended,
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

class ExploreCardScroll extends StatefulWidget {
  const ExploreCardScroll({super.key});

  @override
  State<ExploreCardScroll> createState() => _ExploreCardScrollState();
}

class _ExploreCardScrollState extends State<ExploreCardScroll> {
  final int requestSize = 5;
  List<bool> isSelected = [];
  List<_ProfileQuickViewInfo> cardInfo = [];

  void _loadMoreRecommendations() {
    // future todo:  load the actual backend request into cardInfo here instead
    for (int i = 0; i < requestSize; i++) {
      isSelected.add(false);
      if (cardInfo.isEmpty) {
        cardInfo.add(_createRecommendedMentorExample());
      } else if (cardInfo.length == 1) {
        cardInfo.add(_createRecommendedEntrepreneurExample());
      } else {
        cardInfo.add(_createRegularMentorExample());
      }
    }
  }

  List<Widget> _createCards() {
    List<Widget> exploreCards = [];
    for (int i = 0; i < isSelected.length; i++) {
      exploreCards.add(_createProfilCardFromInfoAndCheckbox(
          info: cardInfo[i],
          checkbox: Checkbox(
              value: isSelected[i],
              onChanged: (bool? value) {
                setState(() {
                  isSelected[i] = value!;
                });
              })));
    }
    return exploreCards;
  }

  @override
  void initState() {
    if (isSelected.isEmpty) {
      _loadMoreRecommendations();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SafeArea(
        child: Column(children: [
      Expanded(
          child: ListView(
        children: _createCards() +
            [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _loadMoreRecommendations();
                    });
                  },
                  child: Column(children: [
                    Text(
                      l10n.exploreSeeMore,
                      style: TextStyles.sectionHeader(context),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ]))
            ],
      )),
      ExploreBottomButtons(
        selectedCount: 0,
      ),
    ]));
  }
}

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExploreCardScroll();
  }
}
