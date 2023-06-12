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
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: TextStyles.smallTextButton(context),
      ),
    );
  }
}
