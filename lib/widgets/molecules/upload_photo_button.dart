import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class UploadPhotoButton extends StatelessWidget {
  const UploadPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return OutlinedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(theme.colorScheme.secondaryContainer),
      ),
      child: Container(
        child: Icon(Icons.add_circle_outline,
            color: theme.colorScheme.onSecondaryContainer),
      ),
    );
  }
}
