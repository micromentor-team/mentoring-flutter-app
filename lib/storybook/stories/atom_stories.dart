import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/providers/user_mock_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/app_wrapper.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_card.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_header.dart';
import 'package:mm_flutter_app/widgets/atoms/reminder_banner.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/server_error.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:mm_flutter_app/widgets/atoms/tune_icon.dart';

import 'package:storybook_flutter/storybook_flutter.dart';

const generatedAvatarUrl = 'https://thispersondoesnotexist.com/';

String _getGreeting(AppLocalizations l10n, String? fullName) {
  int hour = DateTime.now().hour;
  String timeOfDayGreeting;
  if (hour >= 5 && hour < 12) {
    timeOfDayGreeting = l10n.homeGreetingMorning;
  } else if (hour >= 12 && hour < 18) {
    timeOfDayGreeting = l10n.homeGreetingAfternoon;
  } else {
    timeOfDayGreeting = l10n.homeGreetingEvening;
  }
  return fullName != null ? '$timeOfDayGreeting, $fullName' : timeOfDayGreeting;
}

List<Story> atomStories(UserMockProvider mockUserProvider) {
  return [
    Story(
      name: 'widgets/atoms/app wrapper',
      description: 'the frame',
      builder: (context) => const Center(
          child: AppWrapper(
        child: Text('asd'),
      )),
    ),
    Story(
      name: 'widgets/atoms/loading',
      description: 'the loading animation',
      builder: (context) => const Center(child: Loading()),
    ),
    Story(
      name: 'widgets/atoms/invitation tile',
      description: 'a User connection tile',
      builder: (context) => Center(
        child: Column(
          children: [
            InvitationTile(
              userName: mockUserProvider.user!.fullName!,
              userJobTitle: 'Pilot',
              invitationStatus: context.knobs.options(
                  label: 'status',
                  initial: Enum$ChannelInvitationStatus.created,
                  options: [
                    const Option(
                        label: 'created',
                        value: Enum$ChannelInvitationStatus.created),
                    const Option(
                        label: 'accepted',
                        value: Enum$ChannelInvitationStatus.accepted),
                    const Option(
                        label: 'declined',
                        value: Enum$ChannelInvitationStatus.declined),
                    const Option(
                        label: 'unset',
                        value: Enum$ChannelInvitationStatus.unset),
                    const Option(
                        label: 'unknown',
                        value: Enum$ChannelInvitationStatus.$unknown),
                  ]),
              avatarUrl: mockUserProvider.user?.avatarUrl,
              buttonOnPressed: () => {},
            ),
          ],
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/mentor card',
      description: 'a Mentor profile card',
      builder: (context) => Center(
        child: Column(
          children: [
            MentorCard(
              mentorName: mockUserProvider.user!.fullName!,
              avatarUrl: mockUserProvider.user!.avatarUrl!,
              mentorBio: 'The ace pilot of the Star Fox team',
              mentorSkill: const ['marketing', 'barrel rolls'],
            ),
          ],
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/profile chip',
      description: 'a badge indicating type',
      builder: (context) => Center(
        child: ProfileChip(
          text: context.knobs.text(label: 'text', initial: 'Idea'),
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/profile header',
      description: 'includes the salutation',
      builder: (context) {
        final AppLocalizations l10n = AppLocalizations.of(context)!;
        return Center(
            child: ProfileHeader(
          avatarUrl: context.knobs.boolean(
            label: 'include media',
            initial: true,
          )
              ? 'https://thispersondoesnotexist.com/'
              : null,
          profileMessage: _getGreeting(l10n, mockUserProvider.user!.fullName),
          profileCompletionPercentage: context.knobs.nullable.sliderInt(
            label: 'profile completion',
            initial: 1,
          ),
        ));
      },
    ),
    Story(
      name: 'widgets/atoms/reminder banner',
      description: 'a call to action banner',
      builder: (context) => Center(
        child: ReminderBanner(
          titleText: context.knobs.text(
            label: 'title',
            initial: "Complete your profile",
          ),
          subtitleText: context.knobs.text(
              label: 'subtitle',
              initial:
                  "Did you know that profiles with an avatar image are 60% more likely to connect?"),
          ctaText: context.knobs.text(
            label: 'cta',
            initial: "Complete",
          ),
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/section tile',
      description: 'tile section header',
      builder: (context) => Center(
        child: SectionTile(
          title: 'section title',
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                ),
                margin: const EdgeInsets.all(10.0),
                height: 100,
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/server error',
      description: 'the default messaging',
      builder: ((context) => Center(
            child: ServerError(
              error: context.knobs.text(
                label: 'text',
                initial: 'An unexpected error has occured!',
              ),
            ),
          )),
    ),
    Story(
      name: 'widgets/atoms/skill chip',
      description: 'a skill badge',
      builder: (context) => const Center(
        child: SkillChip(
          skill: 'Marketing',
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/text form field',
      description: 'a generic text input',
      builder: (context) => Center(
        child: TextFormFieldWidget(
          label: context.knobs.text(label: 'label', initial: 'First Name'),
          obscureText:
              context.knobs.boolean(label: 'obfuscate', initial: false),
          onPressed: () {},
          textController: null,
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/tune icon',
      description: 'with filter overlay',
      builder: (context) => const Center(
        child: TuneIcon(),
      ),
    ),
  ];
}
