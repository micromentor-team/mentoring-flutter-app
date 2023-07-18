import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/app_wrapper.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_card.dart';
// import 'package:mm_flutter_app/widgets/atoms/match_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_header.dart';
import 'package:mm_flutter_app/widgets/atoms/rectangle_button.dart';
import 'package:mm_flutter_app/widgets/atoms/reminder_banner.dart';
import 'package:mm_flutter_app/widgets/atoms/resource_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/server_error.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:mm_flutter_app/widgets/atoms/tune_icon.dart';
import 'package:mm_flutter_app/widgets/atoms/user_search_bar.dart';

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
              // userLocation: 'Pallet Town, Kanto',
              avatarUrl: mockUserProvider.user?.avatarUrl,
              // buttonText:
              //     context.knobs.text(label: 'button label', initial: 'Connect'),
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
      name: 'widgets/atoms/mentor tile',
      description: 'a Mentor tile',
      builder: (context) => Center(
        child: Column(
          children: [
            MentorTile(
              avatarUrl: mockUserProvider.user!.avatarUrl!,
              mentorName: mockUserProvider.user!.fullName!,
              mentorLocation: 'Bend, OR',
            ),
          ],
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
      name: 'widgets/atoms/rectangle button',
      description: 'a generic button',
      builder: (context) => Center(
        child: RectangleButton(
          text: context.knobs.text(label: 'text', initial: 'connect'),
          onPressed: () {},
        ),
      ),
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
      name: 'widgets/atoms/resource tile',
      description: 'a content tile',
      builder: (context) => Center(
        child: Column(
          children: [
            ResourceTile(
              icon: context.knobs.options(
                  label: 'icon',
                  initial: context.knobs.options(
                      label: 'icon',
                      initial: const Icon(Icons.school_outlined)),
                  options: [
                    const Option(
                      label: 'none',
                      value: Icon(
                        Icons.school_outlined,
                      ),
                    ),
                  ]),
              text: context.knobs.text(
                label: 'text',
                initial: 'Mentoring 101',
              ),
              onPress: () {},
            ),
          ],
        ),
      ),
    ),
    Story(
      name: 'widgets/atoms/searchbar',
      description: 'for general use',
      builder: (context) => Center(
        child: SearchBar(
          hintText: context.knobs.text(
            label: 'hint',
            initial: 'what are you looking for?',
          ),
          // leading: const Icon(Icons.search),
          leading: context.knobs.options(
            label: 'leading icon',
            initial: const Icon(Icons.search),
            options: [
              const Option(
                label: 'none',
                value: null,
              ),
              const Option(
                label: 'magnifying glass',
                value: Icon(Icons.search),
              )
            ],
          ),
          trailing: context.knobs.options(
            label: 'trailing icon',
            initial: [],
            options: [
              const Option(
                label: 'none',
                value: [],
              ),
              const Option(
                label: 'mic',
                value: [
                  Icon(Icons.mic),
                ],
              ),
            ],
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
                        color: Colors.grey, style: BorderStyle.solid)),
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
    Story(
      name: 'widgets/atoms/user search bar',
      description: 'transitions to header',
      builder: (context) => Center(
        child: UserSearchBar(
          hintText: context.knobs.text(
            label: 'hint',
            initial: 'Search',
          ),
        ),
      ),
    ),
  ];
}
