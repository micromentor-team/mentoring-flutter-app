import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/large_rectangle_button.dart';

class FindMentorSection extends StatelessWidget {
  const FindMentorSection({Key? key}) : super(key: key);

  void _quickMatchPressed() {
    //TODO(m-rosario): Implement Quick Match functionality.
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
      title: 'Find a mentor',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: LargeRectangleButton(onPressed: _quickMatchPressed, text: "Quick match"),
      ),
    );
  }
}
