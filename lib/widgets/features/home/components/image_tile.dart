import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class ImageTile extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;
  final bool isCircle;

  const ImageTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isCircle,
  });

  Widget _makeImage() {
    if (isCircle) {
      return Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: CircleAvatar(
          radius: Radii.avatarRadiusSmall,
          child: CircleAvatar(
            radius: Radii.avatarRadiusSmall,
            backgroundImage: image,
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(
            top: Insets.paddingSmall, bottom: Insets.paddingMedium),
        child: Container(
          width: Dimensions.imageTileRectangularImage.width,
          height: Dimensions.imageTileRectangularImage.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(Radii.roundedRectRadiusMedium)),
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Insets.paddingExtraSmall),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.paddingSmall,
            horizontal: Insets.paddingMedium,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: Dimensions.imageTile.width,
              height: Dimensions.imageTile.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _makeImage(),
                  const Spacer(),
                  Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Insets.paddingExtraSmall,
                        bottom: Insets.paddingSmall),
                    child: Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.tertiary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
