import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/resource_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({Key? key}) : super(key: key);

  List<Widget> _createResourceTiles(AppLocalizations l10n) {
    //TODO(m-rosario): Don't use hardcoded values.
    //TODO(m-rosario): Implement callback for each tile.
    List<Widget> resourceTiles = [
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.school),
        text: l10n.homeResourcesMentorTraining,
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.cases_outlined),
        text: l10n.homeResourcesEntrepreneurTraining,
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
      ResourceTile(
        icon: const Icon(Icons.computer),
        text: l10n.homeResourcesVideos,
        onPress: () => {},
      ),
      Components.resourceListItemDivider,
    ];
    return resourceTiles;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SectionTile(
      title: l10n.homeResourcesSectionTitle,
      addTopDivider: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.widgetMediumInset,
        ),
        child: Column(
          children: _createResourceTiles(l10n),
        ),
      ),
    );
  }
}
