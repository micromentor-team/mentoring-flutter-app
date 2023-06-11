import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';

class RectangleButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const RectangleButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Palette.kLogoColor,
        padding: const EdgeInsets.all(Insets.widgetSmallInset),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Corners.buttonRadius)),
        ),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: Styles.smallTextButton,
      ),
    );
  }
}
