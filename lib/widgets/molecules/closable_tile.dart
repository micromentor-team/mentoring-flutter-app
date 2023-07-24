import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class CloseableTile extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final void Function() onClose;

  const CloseableTile(
      {super.key,
      required this.image,
      required this.title,
      required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.widgetSmallestInset),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Insets.widgetSmallInset,
              horizontal: Insets.widgetMediumInset),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: Dimensions.imageTile.width,
              height: Dimensions.imageTile.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: Dimensions.squareAvatar,
                      height: Dimensions.squareAvatar,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(Radii.roundedRectRadius)),
                        image: DecorationImage(
                          image: image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      )),
                  const Spacer(),
                  Text(
                    title,
                    style: TextStyles.mentorCardTitle(context),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
