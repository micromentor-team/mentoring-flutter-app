import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/errors/exceptions.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/explore/components/explore_filter.dart';
import 'package:mm_flutter_app/widgets/shared/profile_quick_view_card.dart';
import 'package:provider/provider.dart';
import 'package:retry/retry.dart';

import '../../../providers/base/operation_result.dart';
import '../../../providers/models/user_registration_model.dart';
import '../../../utilities/navigation_mixin.dart';

class ExploreCardScroll extends StatefulWidget {
  final ExploreCardFiltersModel exploreCardFilters;

  const ExploreCardScroll({
    super.key,
    required this.exploreCardFilters,
  });

  @override
  State<ExploreCardScroll> createState() => _ExploreCardScrollState();
}

class _ExploreCardScrollState extends State<ExploreCardScroll> {
  late final UserProvider _userProvider;
  final List<UserSearchResult> _results = [];
  late Future<OperationResult<List<UserSearchResult>>> _createUserSearch;
  late int _resultsAvailable;
  bool _showTips = false;
  bool _loadingNextPage = false;
  bool _endOfResults = false;

  String? _searchId;

  @override
  void initState() {
    super.initState();

    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _createUserSearch = _userProvider
        .createUserSearch(
      searchInput: widget.exploreCardFilters.toUserSearchInput(
        Limits.searchResultsBatchSize,
      ),
    )
        .then((r) async {
      _searchId = r.response!.id;
      await _pollUserSearch(_searchId!);
      // Search results ready
      return _addSearchResults();
    });

    final registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _showTips = registrationModel.isNewUser;
    registrationModel.clearNewUserFlag();
  }

  FutureOr<void> _pollUserSearch(String userSearchId) {
    return CrashHandler.retryOnException<void>(
      () async {
        final userSearchResult = await _userProvider.getUserSearch(
          userSearchId: userSearchId,
          fetchFromNetworkOnly: true,
        );
        if (userSearchResult.gqlQueryResult.hasException) {
          String e = userSearchResult.gqlQueryResult.exception.toString();
          CrashHandler.logCrashReport('Failed to retrieve user search: $e');
        }
        final bool isCompleted =
            userSearchResult.response?.runInfos?.last.finishedAt != null;
        if (!isCompleted) {
          throw RetryException(
            message: 'Waiting for user search to complete...',
          );
        }
        // The max number of results that can be shown is the smallest between
        // the UserSearch batch size and the number of actual matches found
        _resultsAvailable = min(
          Limits.searchResultsBatchSize,
          userSearchResult.response!.runInfos!.last.matchCount,
        );
      },
      retryOptions: const RetryOptions(
        maxAttempts: 8,
        maxDelay: Duration(seconds: 2),
      ),
      logFailures: false,
    );
  }

  Future<OperationResult<List<UserSearchResult>>> _addSearchResults() async {
    final result = await _userProvider.findUserSearchResults(
      userSearchId: _searchId!,
      optionsInput: Input$FindObjectsOptions(
        limit: Limits.searchResultsPageSize,
        skip: _results.length,
      ),
      fetchFromNetworkOnly: true,
    );
    if (!result.gqlQueryResult.hasException &&
        result.response != null &&
        result.response!.isNotEmpty) {
      _results.addAll(result.response!);
    }
    if (_results.length >= _resultsAvailable) {
      _endOfResults = true;
    }
    return result;
  }

  Widget _noResultsView(AppLocalizations l10n, ThemeData theme) {
    return Column(
      children: [
        const SizedBox(height: Insets.paddingExtraLarge),
        Text(
          l10n.exploreSearchNoResultsTitle,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
        ),
        Text(
          l10n.exploreSearchNoResultsSubtitle,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
        )
      ],
    );
  }

  List<Widget> _createCards() {
    return _results
        .map(
          (user) => createProfileCardFromInfo(
            info: ProfileQuickViewInfo(
              userId: user.id,
              userType:
                  user.offersHelp ? UserType.mentor : UserType.entrepreneur,
              avatarUrl: user.avatarUrl,
              fullName: user.fullName!,
              location: _location(user.cityOfResidence, user.regionOfResidence,
                  user.countryOfResidence?.translatedValue),
              company: user.companies.firstOrNull?.name,
              companyRole: user.jobTitle,
              endorsements: user.groupMemberships.fold<int>(
                0,
                (acc, membership) {
                  if (membership
                      is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership) {
                    return acc + (membership.endorsements ?? 0);
                  }
                  return acc;
                },
              ),
              expertises: [],
            ),
          ),
        )
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

  void _showTipsSnackBar(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    final bool isEntrepreneur = _userProvider.user!.seeksHelp;
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
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    if (_showTips) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTipsSnackBar(context, theme, l10n);
      });
    }

    return FutureBuilder(
      future: _createUserSearch,
      builder: (context, snapshot) => AppUtility.widgetForAsyncSnapshot(
        snapshot: snapshot,
        onReady: () {
          if (_results.isEmpty) {
            return _noResultsView(l10n, theme);
          }

          return Column(
            children: [
              ..._createCards(),
              _loadingNextPage
                  ? const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Insets.paddingMedium),
                      child: CircularProgressIndicator(),
                    )
                  : _endOfResults
                      ? const SizedBox.shrink()
                      : TextButton(
                          onPressed: () async {
                            setState(() => _loadingNextPage = true);
                            await _addSearchResults();
                            setState(() => _loadingNextPage = false);
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
                                color: Color(
                                  theme.colorScheme.onSurfaceVariant.value,
                                ),
                              ),
                            ],
                          ),
                        )
            ],
          );
        },
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
  late final UserProvider _userProvider;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.clear();
    });

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ExploreFilter(
                  userType: _userProvider.user!.seeksHelp
                      ? UserType.mentor
                      : UserType.entrepreneur,
                ),
                Consumer<ExploreCardFiltersModel>(
                  builder: (context, filters, _) {
                    if (filters.selectedUserType == null) {
                      // Set the default user type to be the opposite type
                      filters.setAdvancedFilters(
                        selectedUserType: _userProvider.user!.seeksHelp
                            ? UserType.mentor
                            : UserType.entrepreneur,
                      );
                    }
                    return ExploreCardScroll(
                      exploreCardFilters: filters,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
