import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/home/components/recommended_user_card.dart';
import 'package:provider/provider.dart';
import 'package:retry/retry.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../providers/base/operation_result.dart';
import '../../../../providers/user_provider.dart';
import '../../../../utilities/errors/crash_handler.dart';
import '../../../../utilities/errors/exceptions.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({
    Key? key,
  }) : super(key: key);

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  late final UserProvider _userProvider;
  late final AuthenticatedUser _authenticatedUser;
  late Future<OperationResult<List<UserSearchResult>>> _recommendedUsers;
  late final bool _isEntrepreneur;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _authenticatedUser = _userProvider.user!;
    _isEntrepreneur = _authenticatedUser.seeksHelp;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _recommendedUsers = _userProvider
        .createUserSearch(
      searchInput: Input$UserSearchInput(
        seeksHelp: _isEntrepreneur
            ? Enum$UserSearchFieldPreference.isFalse
            : Enum$UserSearchFieldPreference.isTrue,
        offersHelp: _isEntrepreneur
            ? Enum$UserSearchFieldPreference.isTrue
            : Enum$UserSearchFieldPreference.isFalse,
        maxResultCount: Limits.homeRecommendedUsersMaxSize,
      ),
    )
        .then(
      (r) async {
        final searchId = r.response!.id;
        await _pollUserSearch(searchId);
        // Search results ready
        return await _userProvider.findUserSearchResults(
          userSearchId: searchId,
          optionsInput: Input$FindObjectsOptions(
            limit: Limits.homeRecommendedUsersMaxSize,
          ),
          fetchFromNetworkOnly: true,
        );
      },
    );
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
      },
      retryOptions: const RetryOptions(
        maxAttempts: 8,
        maxDelay: Duration(seconds: 2),
      ),
      logFailures: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _recommendedUsers,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            List<UserSearchResult> users = snapshot.data?.response ?? [];
            return _createRecommendedUsersWidget(users, context);
          },
        );
      },
    );
  }

  Column _createRecommendedUsersWidget(
      List<UserSearchResult> users, BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        RecommendedUsersHeading(
          title: _isEntrepreneur
              ? l10n.homeRecommendedEntrepreneurTitle
              : l10n.homeRecommendedMentorTitle,
          subtitle: l10n.homeRecommendedSubtitle,
        ),
        RecommendedUsersScroll(
          isEntrepreneur: _isEntrepreneur,
          recommendedUsers: users,
        ),
      ],
    );
  }
}

class RecommendedUsersHeading extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function()? seeAllOnPressed;
  const RecommendedUsersHeading({
    Key? key,
    required this.title,
    required this.subtitle,
    this.seeAllOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppEdgeInsets.paddingCompact,
        vertical: Insets.paddingSmall,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w400,
                ),
              ),
              _SectionExpandToggle(
                  text: l10n.seeMore,
                  onPressed: () {
                    context.push(Routes.explore.path);
                  }),
            ],
          ),
          Row(
            children: [
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _SectionExpandToggle extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const _SectionExpandToggle({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(Insets.paddingExtraSmall),
        child: Text(
          text,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}

class RecommendedUsersScroll extends StatelessWidget {
  final List<UserSearchResult> recommendedUsers;
  final bool isEntrepreneur;

  const RecommendedUsersScroll({
    super.key,
    required this.isEntrepreneur,
    required this.recommendedUsers,
  });

  List<Widget> _createUserCards(AppLocalizations l10n, GoRouter router) {
    return recommendedUsers.map(
      (e) {
        final maybeMentorGroupMembership = e.groupMemberships
            .where((g) => g.groupIdent == GroupIdent.mentors.name)
            .firstOrNull
            ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null);
        final maybeMenteeGroupMembership = e.groupMemberships
            .where((g) => g.groupIdent == GroupIdent.mentees.name)
            .firstOrNull
            ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null);
        return RecommendedUserCard(
          avatarUrl: e.avatarUrl,
          fullName: e.fullName!,
          jobTitle: e.jobTitle,
          company: e.companies.firstOrNull?.name,
          userType: e.seeksHelp ? UserType.entrepreneur : UserType.mentor,
          expertises: e.seeksHelp
              ? maybeMenteeGroupMembership?.soughtExpertises
                      .map((e) => e.translatedValue!)
                      .toList() ??
                  const []
              : maybeMentorGroupMembership?.expertises
                      .map((e) => e.translatedValue!)
                      .toList() ??
                  const [],
          endorsements: maybeMentorGroupMembership?.endorsements ?? 0,
          onTap: () => router.push('${Routes.profile.path}/${e.id}'),
        );
      },
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final GoRouter router = GoRouter.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Insets.paddingSmall),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppEdgeInsets.paddingCompact,
                ),
                child: Row(
                  children: _createUserCards(l10n, router),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
