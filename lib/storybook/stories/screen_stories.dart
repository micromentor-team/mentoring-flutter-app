import 'package:flutter/material.dart';
import 'package:mm_flutter_app/providers/user_mock_provider.dart';
import 'package:mm_flutter_app/widgets/screens/dashboard/dashboard.dart';
import 'package:mm_flutter_app/widgets/screens/explore/explore.dart';
import 'package:mm_flutter_app/widgets/screens/home/dialog_and_rating.dart';
import 'package:mm_flutter_app/widgets/screens/home/home.dart';
import 'package:mm_flutter_app/widgets/screens/home/users_list.dart';
import 'package:mm_flutter_app/widgets/screens/home_menu/home_menu.dart';
import 'package:mm_flutter_app/widgets/screens/messages/messages_list.dart';
import 'package:mm_flutter_app/widgets/screens/messages/messages_screen.dart';
import 'package:mm_flutter_app/widgets/screens/profile/about.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_screen.dart';
import 'package:mm_flutter_app/widgets/screens/profile/your_email.dart';
import 'package:mm_flutter_app/widgets/screens/profile/your_name.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_screen.dart';
import 'package:mm_flutter_app/widgets/screens/user_settings/user_settings.dart';
import 'package:mm_flutter_app/widgets/screens/welcome/welcome_screen.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> screenStories(UserMockProvider mockUserProvider) {
  return [
    // ========== channel messages ==========
    // Story(
    //   name: 'screens/channel messages/message bubble',
    //   description: '',
    //   builder: (context) {
    //     return MessageBubble(
    //       message: Message(
    //         id: '101',
    //         createdBy: mockUserProvider.user!.id,
    //         channelId: '101',
    //         messageText: context.knobs.text(
    //           label: 'message text',
    //           initial: 'This is an example message text. 👍🏻',
    //         ),
    //         createdAt: DateTime.now().toString(),
    //       ),
    //       participants: const [],
    //     );
    //   },
    // ),
    // ========== dashboard ==========
    Story(
      name: 'screens/dashboard',
      description: 'the dashboard view',
      builder: (context) {
        return const DashboardScreen();
      },
    ),
    // ========== explore ==========
    Story(
      name: 'screens/explore/explore',
      description: 'the explore view',
      builder: (context) {
        return const ExploreCardScroll();
      },
    ),
    // ========== home ==========
    Story(
      name: 'screens/home/dialog and rating',
      description: 'the user rating',
      builder: (context) {
        return Center(child: rating(4));
      },
    ),
    Story(
      name: 'screens/home/home',
      description: 'the home view',
      builder: (context) {
        return const HomeScreen();
      },
    ),
    Story(
      name: 'screens/home/users list',
      description: 'a list of Users',
      builder: (context) {
        return const UsersList(
          channels: [],
          search: '',
        );
      },
    ),
    // ========== home menu ==========
    Story(
      name: 'screens/home menu',
      description: 'the home menu',
      builder: (context) {
        return const HomeMenu();
      },
    ),
    // ========== messages ==========
    Story(
      name: 'screens/messages/messages list',
      description: '',
      builder: (context) {
        return MessagesList(
          user: mockUserProvider.user!,
          channels: const [],
        );
      },
    ),
    Story(
      name: 'screens/messages/messages screen',
      description: '',
      builder: (context) {
        return const ChannelsScreen();
      },
    ),
    // ========== profile ==========
    Story(
      name: 'screens/profile/about',
      description: '',
      builder: (context) {
        return const About();
      },
    ),
    Story(
      name: 'screens/profile/profile',
      description: '',
      builder: (context) {
        return const ProfileScreen();
      },
    ),
    Story(
      name: 'screens/profile/your email',
      description: '',
      builder: (context) {
        return const YourEmail();
      },
    ),
    Story(
      name: 'screens/profile/your name',
      description: '',
      builder: (context) {
        return YourName();
      },
    ),
    // ========== sign in ==========
    Story(
      name: 'screens/sign in',
      description: '',
      builder: (context) {
        return const SignInScreen();
      },
    ),
    // ========== sign up ==========
    Story(
      name: 'screens/sign up',
      description: '',
      builder: (context) {
        return const SignUpScreen();
      },
    ),
    // ========== tabs ==========
    Story(
      name: 'screens/tab',
      description: '',
      builder: (context) {
        return Tab();
      },
    ),
    // ========== user settings ==========
    Story(
      name: 'screens/user settings',
      description: '',
      builder: (context) {
        return const UserSettings();
      },
    ),
    // ========== welcome ==========
    Story(
      name: 'screens/welcome',
      description: '',
      builder: (context) {
        return const WelcomeScreen();
      },
    ),
  ];
}
