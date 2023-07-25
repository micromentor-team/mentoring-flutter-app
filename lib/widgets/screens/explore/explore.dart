import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/explore_filter.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/molecules/explore_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';
import '../../../utilities/router.dart';

class ExploreCardScroll extends StatefulWidget {
  const ExploreCardScroll({super.key});

  @override
  State<ExploreCardScroll> createState() => _ExploreCardScrollState();
}

class _ExploreCardScrollState extends State<ExploreCardScroll> {
  final int requestSize = 5;
  List<bool> isSelected = [];
  List<ProfileQuickViewInfo> cardInfo = [];

  void _loadMoreRecommendations() {
    // future todo:  load the actual backend request into cardInfo here instead
    for (int i = 0; i < requestSize; i++) {
      isSelected.add(false);
      if (cardInfo.isEmpty) {
        cardInfo.add(createRecommendedMentorExample());
      } else if (cardInfo.length == 1) {
        cardInfo.add(createRecommendedEntrepreneurExample());
      } else {
        cardInfo.add(createRegularMentorExample());
      }
    }
  }

  List<Widget> _createCards() {
    List<Widget> exploreCards = [];
    for (int i = 0; i < isSelected.length; i++) {
      exploreCards.add(createProfilCardFromInfoAndCheckbox(
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

  List<Widget> _createFilter(context) {
    //TODO(guptarupal): enable this functionality without hardcoded data

    List<Widget> filterMenu = [
      const ExploreFilter(
        userType: UserType.entrepreneur,
        skills: ["Marketing", "Operations", "Starting Up"],
        countries: ["USA"],
        languages: ["English", "Hindi"],
      )
    ];
    return filterMenu;
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
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SafeArea(
      child: Column(children: [
        Expanded(
            child: ListView(
          children: _createFilter(context) +
              _createCards() +
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
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(theme.colorScheme.onSurfaceVariant.value),
                      ),
                    ]))
              ],
        )),
        ExploreBottomButtons(
          clearAction: () {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = false;
              }
            });
          },
          sendInvitesAction: () {
            List<ProfileQuickViewInfo> selectedInfo = [];
            for (int i = 0; i < isSelected.length; i++) {
              if (isSelected[i]) {
                selectedInfo.add(cardInfo[i]);
              }
            }
            context.push(Routes.exploreInviteToConnect, extra: selectedInfo);
          },
          selectedCount: isSelected
              .map((e) => e ? 1 : 0)
              .reduce((value, element) => value + element),
        ),
      ]),
    );
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with RouteAwareMixin<ExploreScreen> {
  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.clear();
    });
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  @override
  Widget build(BuildContext context) {
    return const ExploreCardScroll();
  }
}
