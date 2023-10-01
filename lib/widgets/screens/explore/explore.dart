import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/explore_filter.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

class ExploreCardScroll extends StatefulWidget {
  const ExploreCardScroll({super.key});

  @override
  State<ExploreCardScroll> createState() => _ExploreCardScrollState();
}

class _ExploreCardScrollState extends State<ExploreCardScroll> {
  late final AuthenticatedUser _authenticatedUser;
  final int requestSize = 5;
  List<bool> isSelected = [];
  List<ProfileQuickViewInfo> cardInfo = [];
  bool _showTips = false;

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
    super.initState();
    if (isSelected.isEmpty) {
      _loadMoreRecommendations();
    }
    _authenticatedUser = Provider.of<UserProvider>(
      context,
      listen: false,
    ).user!;
    final registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _showTips = registrationModel.isNewUser;
    registrationModel.clearNewUserFlag();
  }

  void _showTipsSnackBar(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    final bool isEntrepreneur = _authenticatedUser.seeksHelp;
    _showTips = false;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: theme.colorScheme.primaryContainer,
        duration: const Duration(minutes: 5),
        content: Padding(
          padding: const EdgeInsets.all(Insets.paddingMedium),
          child: Center(
            child: Column(
              children: [
                Text(
                  isEntrepreneur
                      ? l10n.exploreTipsEntrepreneurTitle
                      : l10n.exploreTipsMentorTitle,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  isEntrepreneur
                      ? l10n.exploreTipsEntrepreneurSubtitle
                      : l10n.exploreTipsMentorSubtitle,
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
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    if (_showTips) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTipsSnackBar(context, theme, l10n);
      });
    }
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
                      child: Column(
                        children: [
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
                        ],
                      ),
                    ),
                  ],
            ),
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
