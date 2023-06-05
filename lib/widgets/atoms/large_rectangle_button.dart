import 'package:flutter/material.dart';

import 'package:mm_flutter_app/themes/palette.dart';

class LargeRectangleButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const LargeRectangleButton({
    Key? key,
    required this.onPressed,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Palette.kLogoColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
