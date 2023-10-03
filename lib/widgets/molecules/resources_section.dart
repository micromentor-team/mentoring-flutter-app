// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ResourceImage extends StatelessWidget {
  final AssetImage resource_image;
  final String subheading;

  const ResourceImage({
    Key? key,
    required this.resource_image,
    required this.subheading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
          top: Insets.paddingSmall, bottom: Insets.paddingSmall),
      child: Column(
        children: [
          Image(image: resource_image),
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingSmall),
            child: Text(subheading,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: Colors.black,
                )),
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
        l10n.moreResources,
        style: theme.textTheme.titleLarge?.copyWith(
          color: Colors.black,
        ),
      ),
      ResourceImage(
        resource_image: const AssetImage(Assets.trainingHomePageImage),
        subheading: l10n.trainingMentoringFirstSteps,
      ),
      ResourceImage(
        resource_image: const AssetImage(Assets.trainingHomePageImageTwo),
        subheading: l10n.trainingBuildingFuture,
      ),
      ResourceImage(
        resource_image: const AssetImage(Assets.trainingHomePageImageThree),
        subheading: l10n.trainingMarketingBusiness,
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
