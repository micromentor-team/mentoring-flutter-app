import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class UploadPhotoButton extends StatelessWidget {
  const UploadPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return OutlinedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              backgroundColor: theme.colorScheme.secondaryContainer,
              contentPadding: EdgeInsets.zero,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                            theme.colorScheme.onSecondaryContainer),
                        side: const MaterialStatePropertyAll(BorderSide.none),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.insert_photo_outlined,
                          ),
                          SizedBox(width: 8),
                          Text("Upload photo"),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                            theme.colorScheme.onSecondaryContainer),
                        side: const MaterialStatePropertyAll(BorderSide.none),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                          ),
                          SizedBox(width: 8),
                          Text("Take photo"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
        backgroundColor:
            MaterialStatePropertyAll(theme.colorScheme.secondaryContainer),
        side: const MaterialStatePropertyAll(BorderSide.none),
      ),
      child: Container(
        width: 200,
        height: 200,
        child: Center(
          child: Icon(Icons.add_circle_outline,
              color: theme.colorScheme.onSecondaryContainer),
        ),
      ),
    );
  }
}
