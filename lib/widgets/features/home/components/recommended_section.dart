import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/home/components/recommended_user_card.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../providers/base/operation_result.dart';
import '../../../../providers/user_provider.dart';

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
  late Future<OperationResult<List<RecommendedUser>>> _recommendedUsers;
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
    _recommendedUsers = _userProvider.findRecommendedUsers(
      optionsInput: Input$FindObjectsOptions(limit: 20),
      filterInput: Input$UserListFilter(
        ids: [
          // TODO - Test Users, remove when matching engine is ready
          '64ee5cf957728fa723e28d59',
          '64ee5f4557728fa723e28d60',
          '64ee606457728fa723e28d67',
          '64ee618e57728fa723e28d6e',
          '64ee629a57728fa723e28d75',
          '64ee63fe57728fa723e28d7c',
          '64ee654357728fa723e28d83',
          '64ee660957728fa723e28d8a',
          '64ee670457728fa723e28d91',
          '64ee68d457728fa723e28d98',
          '64ee6f8357728fa723e28d9f',
          '64ee706157728fa723e28da6',
          '64ee710357728fa723e28dad',
          '64ee71b557728fa723e28db4',
          '64ee726f57728fa723e28dbb',
          '64ee733557728fa723e28dc2',
          '64ee73e657728fa723e28dc9',
          '64ee749457728fa723e28dd0',
          '64ee758a57728fa723e28dd7',
          '64ee768757728fa723e28dde',
        ],
      ),
      matchInput: Input$UserInput(),
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
            List<RecommendedUser> users = snapshot.data?.response != null
                ? snapshot.data!.response!
                    .where((element) => element.id != _authenticatedUser.id)
                    .toList()
                : [];
            return _createRecommendedUsersWidget(users, context);
          },
        );
      },
    );
  }

  Column _createRecommendedUsersWidget(
      List<RecommendedUser> users, BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        RecommendedUsersHeading(
          title: _isEntrepreneur
              ? l10n.homeRecommendedEntrepreneurTitle
              : l10n.homeRecommendedMentorTitle,
          subtitle: l10n.homeRecommendedSubtitle,
        ),
        RecommendedUsersScroll(recommendedUsers: users),
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
        vertical: Insets.paddingSmall,
        horizontal: AppEdgeInsets.paddingCompact,
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
  final List<RecommendedUser> recommendedUsers;

  const RecommendedUsersScroll({
    Key? key,
    required this.recommendedUsers,
  }) : super(key: key);

  List<Widget> _createUserCards(GoRouter router) {
    int numberOfUsers = recommendedUsers.length;
    List<RecommendedUserCard> userCards = [];
    int i;

    for (i = 0; i < numberOfUsers; i++) {
      final recommendedUser = recommendedUsers[i];
      userCards.add(
        RecommendedUserCard(
            avatarUrl: recommendedUser.avatarUrl,
            fullName: recommendedUser.fullName.toString(),
            onTap: () =>
                router.push('${Routes.profile.path}/${recommendedUser.id}'),
            //TODO: Once these fields come up in the mock server, replace these hardcoded values with the appropriate fields
            company: recommendedUser.jobTitle ?? 'CEO, Levi Consulting',
            expertises: const []),
      );
    }
    return userCards;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> userCards = _createUserCards(
      GoRouter.of(context),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.paddingSmall,
                ),
                child: Row(
                  children: userCards,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
