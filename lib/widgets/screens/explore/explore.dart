import 'dart:async';

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
import 'package:mm_flutter_app/widgets/atoms/explore_filter.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
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
  bool _showTips = false;

  String? _searchId;
  int _maxResults = Limits.searchResultsBatchSize;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _userProvider
        .createUserSearch(
      searchInput: widget.exploreCardFilters.toUserSearchInput(
        Limits.searchResultsBatchSize * 10,
      ),
    )
        .then((r) async {
      final searchId = r.response!.id;
      await _pollUserSearch(searchId);
      setState(() {
        _searchId = searchId;
      });
    });

    final registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _showTips = registrationModel.isNewUser;
    registrationModel.clearNewUserFlag();
  }

  FutureOr<OperationResult<UserSearch>> _pollUserSearch(String userSearchId) {
    return CrashHandler.retryOnException<OperationResult<UserSearch>>(
      () async {
        final userSearchResult = await _userProvider.getUserSearch(
          userSearchId: userSearchId,
          fetchFromNetworkOnly: true,
        );
        if (userSearchResult.gqlQueryResult.hasException) {
          String e = userSearchResult.gqlQueryResult.exception.toString();
          CrashHandler.logCrashReport('Failed to retrieve user search: $e');
        }
        final bool isCompleted = userSearchResult.response?.runInfos
                ?.any((i) => i.finishedAt != null) ??
            false;
        if (!isCompleted) {
          throw RetryException(
            message: 'Waiting for user search to complete...',
          );
        }
        return userSearchResult;
      },
      retryOptions: const RetryOptions(
        maxAttempts: 10,
        maxDelay: Duration(seconds: 1),
      ),
      logFailures: false,
    );
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

  List<Widget> _createCards(
      List<Query$FindUserSearchResults$findUserSearchResults> response) {
    return response
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
                      // is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership) {
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

    if (_searchId == null) {
      return const Center(child: Loading());
    }

    if (_showTips) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTipsSnackBar(context, theme, l10n);
      });
    }

    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return FutureBuilder(
      future: userProvider.findUserSearchResults(
        userSearchId: _searchId!,
        optionsInput: Input$FindObjectsOptions(
          limit: _maxResults,
        ),
      ),
      builder: (context, snapshot) => AppUtility.widgetForAsyncSnapshot(
        snapshot: snapshot,
        onReady: () {
          // For some reason the backend adds new entries at the beginning of response
          final results = (snapshot.data?.response ?? []).reversed.toList();
          if (results.isEmpty) {
            return _noResultsView(l10n, theme);
          }
          return Column(
            children: [
              ..._createCards(results),
              TextButton(
                onPressed: () {
                  setState(() {
                    _maxResults += Limits.searchResultsBatchSize;
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
                      color: Color(theme.colorScheme.onSurfaceVariant.value),
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
