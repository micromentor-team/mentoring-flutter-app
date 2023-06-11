import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final Widget child;

  const SectionTile({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.widgetMediumInset),
          child: Text(
            title,
            style: Styles.sectionHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, Insets.widgetMediumInset),
          child: Center(
            child: child,
          ),
        ),
      ],
    );
  }
}
