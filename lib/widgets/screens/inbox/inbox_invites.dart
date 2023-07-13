import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class InboxInvitesScreen extends StatelessWidget {
  const InboxInvitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.appEdgeInsetCompact),
        child: Placeholder(
          color: Colors.red,
        ),
      ),
    );
  }
}
