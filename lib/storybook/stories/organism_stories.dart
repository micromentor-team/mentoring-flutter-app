import 'package:flutter/material.dart';
import 'package:mm_flutter_app/providers/user_mock_provider.dart';
import 'package:mm_flutter_app/widgets/organisms/user_card.dart';
import 'package:mm_flutter_app/widgets/organisms/user_expanded_card.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> organismStories(UserMockProvider mockUserProvider) {
  return [
    Story(
      name: 'widgets/organisms/user card',
      description: 'a User card',
      builder: ((context) {
        return mockUserProvider.queryAllUsers(
          onLoading: () {
            return const SizedBox.shrink();
          },
          onError: (error, {refetch}) {
            return Text('Error: $error');
          },
          onData: (data, {refetch, fetchMore}) {
            List users = data.response != null
                ? data.response!.reversed
                    .where((element) => element.id != mockUserProvider.user?.id)
                    .toList()
                : [];

            return Column(
              children: [
                Center(
                  child: userCard(
                    users,
                    context.knobs
                        .sliderInt(label: 'list index', initial: 0, max: 3),
                  ),
                ),
              ],
            );
          },
        );
      }),
    ),
    Story(
      name: 'widgets/organisms/expanded user card',
      description: 'an expanded User card',
      builder: ((context) {
        return mockUserProvider.queryAllUsers(
          onLoading: () {
            return const SizedBox.shrink();
          },
          onError: (error, {refetch}) {
            return Text('Error: $error');
          },
          onData: (data, {refetch, fetchMore}) {
            List users = data.response != null
                ? data.response!.reversed
                    .where((element) => element.id != mockUserProvider.user?.id)
                    .toList()
                : [];

            return Center(
              child: userExpandedCard(
                users: users,
                context: context,
                index: context.knobs
                    .sliderInt(label: 'list index', initial: 0, max: 3),
                onOpenMessage: () {},
              ),
            );
          },
        );
      }),
    ),
  ];
}
