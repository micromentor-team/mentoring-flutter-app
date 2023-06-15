import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_page_header.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_text_section.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_page_social_chips.dart';

String placeholderImage =
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: UserProfile(),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return userProvider.queryUser(
      onLoading: () {
        return const SizedBox.shrink();
      },
      onError: (error) {
        return Text('Error: $error');
      },
      onData: (data) {
        User user = User.fromJson(data);
        return Profile(user: user);
      },
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const Divider(thickness: 4.0, height: 4.0),
                ProfilePageHeader(
                  avatarUrl: user.avatarUrl,
                  profileMessage: user.fullName,
                  userLocation: "Jaipur, Rajasthan",
                  //TODO(guptarupal): Call backend instead of using hardcoded mock data.
                ),
                const ProfilePageSocialChips(),
                const ProfileTextSection(),
                const Divider(thickness: 4.0, height: 4.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
