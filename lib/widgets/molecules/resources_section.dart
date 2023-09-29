import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

import 'image_tile.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({Key? key}) : super(key: key);

  List<Widget> _createResourceTiles(AppLocalizations l10n) {
    //TODO(m-rosario): Don't use hardcoded values.
    //TODO(m-rosario): Implement callback for each tile.
    List<Widget> resourceTiles = [
      ImageTile(
        image: const AssetImage(Assets.resourceWebinarStockImage),
        title: l10n.homeResourcesWebinar,
        subtitle: l10n.homeResourcesWebinarDescription,
        isCircle: false,
      ),
      ImageTile(
        image: const AssetImage(Assets.resourceTrainingStockImage),
        title: l10n.homeResourcesTraining,
        subtitle: l10n.homeResourcesTrainingDescription,
        isCircle: false,
      ),
      ImageTile(
        image: const AssetImage(Assets.resourceBlogsStockImage),
        title: l10n.homeResourcesBlogs,
        subtitle: l10n.homeResourcesBlogsDescription,
        isCircle: false,
      ),
    ];
    return resourceTiles;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Widget> resourceTiles = _createResourceTiles(l10n);
    return const Placeholder();
    // SectionTile(
    // title: l10n.homeResourcesSectionTitle,
    // addTopDivider: true,
    // child: ,
    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: resourceTiles
    //     Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: Insets.paddingSmall),
    //     child: Row(
    //       children: resourceTiles,
    //     ),
    //   ),
    // ),
    // );
  }
}
