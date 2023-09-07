import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_experience_and_education.dart';
import 'package:mm_flutter_app/widgets/screens/profile/about_my_business.dart';
import 'package:mm_flutter_app/widgets/screens/profile/how_can_i_help_section.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_about_me.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_basic_info.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../molecules/profile_page_header.dart';

class ProfileScreen extends StatefulWidget {
  final String? userId;
  const ProfileScreen({
    super.key,
    this.userId,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with NavigationMixin<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.clear();
    });
    return const ProfileScreenScroll(showProfilePagerHeader: true);
  }
}

class ProfileScreenScroll extends StatefulWidget {
  final bool showProfilePagerHeader;

  const ProfileScreenScroll({
    Key? key,
    this.showProfilePagerHeader = false,
  }) : super(key: key);

  @override
  State<ProfileScreenScroll> createState() => _ProfileScreenScrollState();
}

class _ProfileScreenScrollState extends State<ProfileScreenScroll> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false).user!;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (widget.showProfilePagerHeader)
              const ProfilePageHeader(requestReceived: true),
            //TO-DO(all): replace the placeholder with the elements of the profile page you're working on
            ProfileBasicInfo(
              userType: UserType.entrepreneur,
              fullName: user.fullName!,
              avatarUrl: user.avatarUrl,
              pronouns: "she/her",
              affiliations: const ["Verizon Digital Ready"],
              company: "SVK Group",
              companyRole: "Director",
              education: "Harvard University, MBA",
              linkedinUrl: "https://www.linkedin.com/in/williamhgates/",
              vacationMode: true,
            ),
            const ProfileAboutMe(),
            const ExperienceAndEducation(),
            const AboutMyBusiness(),
            const HowCanIHelpSection(),
          ],
        ),
      ),
    );
  }
}
