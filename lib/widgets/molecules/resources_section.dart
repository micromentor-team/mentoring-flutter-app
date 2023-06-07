import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/resource_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({Key? key}) : super(key: key);

  List<Widget> _createResourceTiles() {
    //TODO(m-rosario): Don't use hardcoded values.
    //TODO(m-rosario): Implement callback for each tile.
    List<Widget> resourceTiles = [
      const Divider(thickness: 1, height: 0),
      ResourceTile(
        icon: const Icon(Icons.school),
        text: 'Mentor Training',
        onPress: () => {},
      ),
      const Divider(thickness: 1, height: 0),
      ResourceTile(
        icon: const Icon(Icons.cases_outlined),
        text: 'Entrepreneur Training',
        onPress: () => {},
      ),
      const Divider(thickness: 1, height: 0),
      ResourceTile(
        icon: const Icon(Icons.computer),
        text: 'Videos and Webinars',
        onPress: () => {},
      ),
      const Divider(thickness: 1, height: 0),
    ];
    return resourceTiles;
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
        title: 'Recommended Tools & Resources',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: _createResourceTiles(),
          ),
        ),
    );
  }
}
