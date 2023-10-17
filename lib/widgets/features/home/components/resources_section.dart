import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ResourceImage extends StatelessWidget {
  final AssetImage resourceImage;
  final String subheading;

  const ResourceImage({
    Key? key,
    required this.resourceImage,
    required this.subheading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.paddingSmall,
        bottom: Insets.paddingSmall,
      ),
      child: Column(
        children: [
          Image(image: resourceImage),
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingSmall),
            child: Text(
              subheading,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({Key? key}) : super(key: key);

  List<Widget> _createResourceTiles(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Widget> resourceTiles = [
      Text(
        l10n.homeResourcesTitle,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      ResourceImage(
        resourceImage: const AssetImage(Assets.trainingHomePageImage),
        subheading: l10n.homeResourcesItemMentoringFirstSteps,
      ),
      ResourceImage(
        resourceImage: const AssetImage(Assets.trainingHomePageImageTwo),
        subheading: l10n.homeResourcesItemBuildingFuture,
      ),
      ResourceImage(
        resourceImage: const AssetImage(Assets.trainingHomePageImageThree),
        subheading: l10n.homeResourcesItemMarketingBusiness,
      ),
    ];
    return resourceTiles;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> resourceTiles = _createResourceTiles(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.paddingSmall,
        horizontal: AppEdgeInsets.paddingCompact,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: resourceTiles,
      ),
    );
  }
}
