import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_card.dart';
import 'package:provider/provider.dart';

import '../../providers/base/operation_result.dart';
import '../../providers/user_provider.dart';

class RecommendedMentorsScroll extends StatelessWidget {
  final List<AllUsersResult> mentors;

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
            avatarUrl: mentors[i].avatarUrl,
            mentorName: mentors[i].fullName.toString(),
            //TODO: Once these fields come up in the mock server, replace these hardcoded values with the appropriate fields
            mentorBio: 'CEO, Levi Consulting',
            mentorSkill: const ['Marketing for a startup', 'Operations']),
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

class RecommendedSection extends StatefulWidget {
  final AuthenticatedUser authenticatedUser;
  const RecommendedSection({
    Key? key,
    required this.authenticatedUser,
  }) : super(key: key);

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  late final UserProvider _userProvider;
  late Future<OperationResult<List<AllUsersResult>>> _allUsers;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _allUsers = _userProvider.findAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _allUsers,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            List<AllUsersResult> mentors = snapshot.data?.response != null
                ? snapshot.data!.response!.reversed
                    .where(
                        (element) => element.id != widget.authenticatedUser.id)
                    .toList()
                : [];
            return _createRecommendedMentorsWidget(mentors, context);
          },
        );
      },
    );
  }

  Column _createRecommendedMentorsWidget(
      List<AllUsersResult> mentors, BuildContext context) {
    return Column(
      children: [
        RecommendedMentorsScroll(mentors: mentors),
        const FindMoreMentorsButton(),
      ],
    );
  }
}
