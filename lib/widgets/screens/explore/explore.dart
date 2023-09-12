import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/explore_filter.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';

import '../../../utilities/navigation_mixin.dart';

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
      exploreCards.add(createProfileCardFromInfo(
        info: cardInfo[i],
      ));
    }
    return exploreCards;
  }

  List<Widget> _createFilter(context) {
    List<Widget> filterMenu = [
      const ExploreFilter(userType: UserType.entrepreneur)
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
      child: Column(
        children: [
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
                          color:
                              Color(theme.colorScheme.onSurfaceVariant.value),
                        ),
                      ]))
                ],
          )),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: theme.colorScheme.primaryContainer,
                  content: Padding(
                    padding: const EdgeInsets.all(Insets.paddingMedium),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            l10n.maximizeYourImpact,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            l10n.connectWithThreeEntrepreneurs,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  showCloseIcon: true,
                  closeIconColor: theme.colorScheme.onSurfaceVariant,
                  padding: const EdgeInsets.all(Insets.paddingExtraSmall),
                ),
              );
            },
            child: const Text("Show some tips on a SnackBar"),
          ),
        ],
      ),
    );
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with NavigationMixin<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.clear();
    });
    return const ExploreCardScroll();
  }
}
