import 'package:flutter/material.dart';

import 'package:mm_flutter_app/themes/palette.dart';

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
        padding: const EdgeInsets.all(8.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
