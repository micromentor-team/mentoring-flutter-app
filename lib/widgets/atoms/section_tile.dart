import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final Widget child;
  final bool addTopDivider;
  final bool removeBottomPadding;

  const SectionTile({
    Key? key,
    required this.title,
    required this.child,
    this.addTopDivider = false,
    this.removeBottomPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (addTopDivider) Components.indentedDivider,
        Padding(
          padding: const EdgeInsets.all(Insets.widgetMediumInset),
          child: Text(
            title,
            style: TextStyles.sectionHeader(context),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: removeBottomPadding ? 0 : Insets.widgetMediumInset,
          ),
          child: Center(
            child: child,
          ),
        ),
      ],
    );
  }
}
