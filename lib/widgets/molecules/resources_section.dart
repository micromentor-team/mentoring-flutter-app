import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';
import 'package:mm_flutter_app/widgets/atoms/resource_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({Key? key}) : super(key: key);

  List<Widget> _createResourceTiles() {
    //TODO(m-rosario): Don't use hardcoded values.
    //TODO(m-rosario): Implement callback for each tile.
    List<Widget> resourceTiles = [
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.school),
        text: 'Mentor Training',
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.cases_outlined),
        text: 'Entrepreneur Training',
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.computer),
        text: 'Videos and Webinars',
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
    ];
    return resourceTiles;
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
      title: 'Recommended Tools & Resources',
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Insets.widgetMediumInset),
        child: Column(
          children: _createResourceTiles(),
        ),
      ),
    );
  }
}
