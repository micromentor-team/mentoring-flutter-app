import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/widgets/molecules/customized_button.dart';
import 'package:mm_flutter_app/widgets/molecules/image_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/mentors_section.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_image.dart';
import 'package:mm_flutter_app/widgets/molecules/rating.dart';
import 'package:mm_flutter_app/widgets/molecules/recommended_mentors_scroll.dart';
import 'package:mm_flutter_app/widgets/molecules/resources_section.dart';
import 'package:mm_flutter_app/widgets/molecules/search_container.dart';
import 'package:mm_flutter_app/widgets/molecules/upcoming_section.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> moleculeStories(UserMockProvider mockUserProvider) {
  return [
    Story(
      name: 'widgets/molecules/customized button',
      description: 'an action button',
      builder: ((context) => Center(
            child: CustomizedButton(
              text: context.knobs
                  .text(label: 'text', initial: 'Find More Mentors'),
              icon: context.knobs
                  .options(label: 'icon', initial: Icons.search, options: [
                const Option(
                  label: 'search',
                  value: Icons.search,
                ),
              ]),
            ),
          )),
    ),
    Story(
      name: 'widgets/molecules/image tile',
      description: 'a tile with an image',
      builder: ((context) => Center(
            child: SizedBox(
              width: double.parse(
                  context.knobs.text(label: 'width', initial: '200')),
              height: double.parse(
                  context.knobs.text(label: 'height', initial: '200')),
              child: ImageTile(
                image: const AssetImage(Assets.resourceWebinarStockImage),
                title: 'Webinar',
                subtitle: 'Mentoring First Step',
                isCircle: context.knobs.boolean(
                  label: 'circular',
                  initial: false,
                ),
              ),
            ),
          )),
    ),
    Story(
      name: 'widgets/molecules/mentors section',
      description: 'a panel with mentor tiles',
      builder: ((context) => const Center(
            child: MentorsSection(),
          )),
    ),
    Story(
      name: 'widgets/molecules/profile image',
      description: 'a default profile image',
      builder: ((context) => const Center(
            child: ProfileImage(),
          )),
    ),
    Story(
      name: 'widgets/molecules/rating',
      description: '5 star rating scale',
      builder: ((context) => const Center(
            child: Rating(),
          )),
    ),
    Story(
      name: 'widgets/molecules/recommended mentors scroll',
      description: 'horizontal scroll Mentor profiles',
      builder: ((context) => const Column(
            children: [
              RecommendedMentorsScroll(),
            ],
          )),
    ),
    Story(
      name: 'widgets/molecules/resources section',
      description: 'a panel with match tiles',
      builder: ((context) => const Column(
            children: [
              ResourcesSection(),
            ],
          )),
    ),
    Story(
      name: 'widgets/molecules/search container',
      description: 'a panel with match tiles',
      builder: ((context) => Center(
            child: Column(
              children: [
                SearchContainer(
                  onChanged: (str) {},
                ),
              ],
            ),
          )),
    ),
    Story(
      name: 'widgets/molecules/upcoming section',
      description: 'horizontal scroll mentoring sessions',
      builder: ((context) => const Center(
            child: UpcomingSection(),
          )),
    ),
  ];
}
