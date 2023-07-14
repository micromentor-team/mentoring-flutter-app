import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ExploreBottomButtons extends StatelessWidget {
  final int selectedCount;

  const ExploreBottomButtons({
    Key? key,
    required this.selectedCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    if (selectedCount > 0) {
      bgColor = Theme.of(context).colorScheme.secondaryContainer;
    } else {
      bgColor = Theme.of(context).colorScheme.surfaceVariant;
    }

    return Container(
      color: bgColor,
      height: Dimensions.exploreBottomSection,
      child: Row(
        children: <Widget>[
          Center(
              child: ElevatedButton(
            onPressed: () {},
            child: const Text("Select profiles to send invites"),
          )),
        ],
      ),
    );
  }
}
