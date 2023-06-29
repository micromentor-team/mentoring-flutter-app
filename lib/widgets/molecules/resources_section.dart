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
        imageUrl:
            "https://freevector-images.s3.amazonaws.com/uploads/vector/preview/40309/YOUNG_GIRL_WORKING_WITH_LAPTOP.jpg",
        title: l10n.homeResourcesWebinar,
        subtitle: l10n.homeResourcesWebinarDescription,
        isCircle: false,
      ),
      ImageTile(
        imageUrl:
            "https://www.freevector.com/uploads/vector/preview/30924/static_bike_Mesa_de_trabajo_1.jpg",
        title: l10n.homeResourcesTraining,
        subtitle: l10n.homeResourcesTrainingDescription,
        isCircle: false,
      ),
      ImageTile(
        imageUrl:
            "https://www.freevector.com/uploads/vector/preview/30263/Book_Linear_Icon.jpg",
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
    return SectionTile(
      title: l10n.homeResourcesSectionTitle,
      addTopDivider: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Insets.widgetSmallInset),
          child: Row(
            children: resourceTiles,
          ),
        ),
      ),
    );
  }
}
