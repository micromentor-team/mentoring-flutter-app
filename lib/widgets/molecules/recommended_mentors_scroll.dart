import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_card.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';

class RecommendedMentorsScroll extends StatelessWidget {
  final List<Query$FindAllUsers$findUsers> mentors;

  const RecommendedMentorsScroll({
    Key? key,
    required this.mentors,
  }) : super(key: key);

  List<Widget> _createMentorCards() {
    int numberOfMentors = mentors.length;
    List<MentorCard> recommendedMentors = [];
    int i;

    for (i = 0; i < numberOfMentors; i++) {
      recommendedMentors.add(
        MentorCard(
            avatarUrl: mentors[i].avatarUrl.toString(),
            mentorName: mentors[i].fullName.toString(),
            //TODO: Once these fields come up in the mock server, replace these hardcoded values with the appropriate fields
            mentorBio: 'CEO, Levi Consulting',
            mentorSkill: ['Marketing for a startup', 'Operations']),
      );
    }
    return recommendedMentors;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> recommendedMentorCards = _createMentorCards();
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
                  children: recommendedMentorCards,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FindMoreMentorsButton extends StatelessWidget {
  const FindMoreMentorsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final GoRouter router = GoRouter.of(context);

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: Container(
        width: 200,
        alignment: Alignment.center,
        child: ElevatedButton.icon(
          icon: const Icon(Icons.search),
          onPressed: () => {
            router.push(Routes.explore.path),
          },
          label: Text(
            l10n.homeFindMoreMentors,
            style: theme.textTheme.labelLarge,
          ),
          style: ButtonStyles.secondaryRoundedRectangleButton(context),
        ),
      ),
    );
  }
}

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    final currentUser = userProvider.user;

    return userProvider.queryAllUsers(onLoading: () {
      return const SizedBox(width: 0.0, height: 0.0);
    }, onError: (error, {refetch}) {
      debugPrint(error);
      return const SizedBox(width: 0.0, height: 0.0);
    }, onData: (data, {refetch, fetchMore}) {
      List<Query$FindAllUsers$findUsers> mentors = data.response != null
          ? data.response!.reversed
              .where((element) => element.id != currentUser?.id)
              .toList()
          : [];
      return _createRecommendedMentorsWidget(mentors, context);
    });
  }

  Column _createRecommendedMentorsWidget(
      List<Query$FindAllUsers$findUsers> mentors, BuildContext context) {
    return Column(
      children: [
        RecommendedMentorsScroll(mentors: mentors),
        const FindMoreMentorsButton(),
      ],
    );
  }
}
