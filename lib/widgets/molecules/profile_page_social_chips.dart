import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/atoms/social_chip.dart';

class ProfilePageSocialChips extends StatelessWidget {
  const ProfilePageSocialChips({Key? key}) : super(key: key);

  List<Widget> _createChips() {
    //TODO(guptarupal): Call backend instead of using hardcoded mock data.
    return [
      _createChip('LinkedIn', const Icon(Icons.person, color: Colors.white),
          'https://www.linkedin.com/in/rupal-gupta-164821100/'),
      _createChip('Facebook', const Icon(Icons.facebook, color: Colors.white),
          'facebook_link'),
      _createChip(
          'Gmail', const Icon(Icons.email, color: Colors.white), 'gmail_link'),
    ];
  }

  SocialChip _createChip(
      String socialApp, Icon socialAppIcon, String socialAppLink) {
    return SocialChip(
      socialApp: socialApp,
      socialAppIcon: socialAppIcon,
      socialAppLink: socialAppLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> chips = _createChips();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: chips,
    );
  }
}
