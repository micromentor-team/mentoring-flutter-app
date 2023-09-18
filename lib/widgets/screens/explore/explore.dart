import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/explore_filter.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

class ExploreCardScroll extends StatefulWidget {
  final UserProvider userProvider;
  final ExploreCardFiltersModel exploreCardFilters;

  const ExploreCardScroll({
    super.key,
    required this.userProvider,
    required this.exploreCardFilters,
  });

  @override
  State<ExploreCardScroll> createState() => _ExploreCardScrollState();
}

class _ExploreCardScrollState extends State<ExploreCardScroll> {
  static const int profileIncrement = 5;

  int _profiles = 0;
  Future<OperationResult<Mutation$CreateUserSearch$createUserSearch>>?
      _recommendedUsers;

  void _loadMoreRecommendations() {
    _profiles += profileIncrement;
    _recommendedUsers = widget.userProvider.createUserSearch(
      searchInput: widget.exploreCardFilters.toUserSearchInput(_profiles),
    );
  }

  List<Widget> _createCards(
      List<Mutation$CreateUserSearch$createUserSearch$topFoundUsers> response) {
    return response
        .map((user) => createProfileCardFromInfo(
              info: ProfileQuickViewInfo(
                userId: user.id,
                userType: // offersHelp ^ seeksHelp == true
                    user.offersHelp ? UserType.mentor : UserType.entrepreneur,
                avatarUrl: user.avatarUrl,
                fullName: user.fullName ?? "Unknown",
                location: _location(
                    user.cityOfResidence,
                    user.regionOfResidence,
                    user.countryOfResidence?.translatedValue),
                company: user.companies.firstOrNull?.name,
                companyRole: user.jobTitle,
                endorsements:
                    user.groupMemberships.fold<int>(0, (acc, membership) {
                  if (membership
                      is Mutation$CreateUserSearch$createUserSearch$topFoundUsers$groupMemberships$$MentorsGroupMembership) {
                    return acc + (membership.endorsements ?? 0);
                  }
                  return acc;
                }),
                skills: [],
              ),
            ))
        .toList();
  }

  String _location(String? city, String? region, String? country) {
    final locs = [city, region, country].nonNulls.toList();
    final buffer = StringBuffer();

    for (int i = 0; i < locs.length - 1; i++) {
      buffer.write("${locs[i]}, ");
    }
    if (locs.isNotEmpty) {
      buffer.write(locs.last);
    }

    return buffer.toString();
  }

  @override
  void initState() {
    if (_profiles == 0) {
      _loadMoreRecommendations();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return FutureBuilder(
      future: _recommendedUsers,
      builder: (context, snapshot) => AppUtility.widgetForAsyncSnapshot(
        snapshot: snapshot,
        onReady: () => Column(
          children: [
            ..._createCards(snapshot.data?.response?.topFoundUsers ?? []),
            TextButton(
                onPressed: () {
                  setState(_loadMoreRecommendations);
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
        ),
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

    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final userProvider = Provider.of<UserProvider>(context, listen: false);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ExploreFilter(
                    userType: (userProvider.isMentor ?? false)
                        ? UserType.mentor
                        : UserType.entrepreneur),
                Consumer<ExploreCardFiltersModel>(
                  builder: (context, filters, _) => ExploreCardScroll(
                    exploreCardFilters: filters,
                    userProvider: userProvider,
                  ),
                ),
              ],
            ),
          ),
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
