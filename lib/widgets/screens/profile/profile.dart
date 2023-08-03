import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/screens/profile/profile_basic_info.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_experience_and_education.dart';
import 'package:provider/provider.dart';
import '../../../providers/models/scaffold_model.dart';
import '../../molecules/profile_page_header.dart';

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
          const ExperienceAndEducation(),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with RouteAwareMixin<ProfileScreen> {
  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.clear();
    });
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  @override
  Widget build(BuildContext context) {
    return const ProfileScreenScroll(showProfilePagerHeader: true);
  }
}
