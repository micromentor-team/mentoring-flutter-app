import 'package:flutter/material.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:provider/provider.dart';
import '../../../providers/models/scaffold_model.dart';
import '../../molecules/profile_page_header.dart';

class ProfileScreenScroll extends StatefulWidget {
  const ProfileScreenScroll({Key? key}) : super(key: key);

  @override
  State<ProfileScreenScroll> createState() => _ProfileScreenScrollState();
}

class _ProfileScreenScrollState extends State<ProfileScreenScroll> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          ProfilePageHeader(),
          //TO-DO(all): replace the placeholder with the elements of the profile page you're working on
          Expanded(
            child: Placeholder(),
          ),
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
    return const ProfileScreenScroll();
  }
}
