import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/mentor_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class MentorsSection extends StatelessWidget {
  const MentorsSection({Key? key}) : super(key: key);

  List<Widget> _createMentorTiles() {
    //TODO(m-rosario): Fetch data from backend instead of using hardcoded mocks.
    return const [
      MentorTile(),
      MentorTile(),
      MentorTile(),
      MentorTile(),
      MentorTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
      title: 'Recommended Mentors',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _createMentorTiles(),
        ),
      ),
    );
  }
}
