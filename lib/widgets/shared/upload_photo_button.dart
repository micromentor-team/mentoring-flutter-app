import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class UploadPhotoButton extends StatelessWidget {
  const UploadPhotoButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return OutlinedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const UploadPhotoDialog();
          },
        );
      },
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Insets.paddingSmall))),
        backgroundColor:
            MaterialStatePropertyAll(theme.colorScheme.secondaryContainer),
        side: const MaterialStatePropertyAll(BorderSide.none),
      ),
      child: SizedBox(
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

class UploadPhotoDialog extends StatelessWidget {
  const UploadPhotoDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Insets.paddingSmall)),
      //converting secondary color to one with 95% brightness below:
      backgroundColor: HSLColor.fromColor(theme.colorScheme.secondary)
          .withLightness(0.95)
          .toColor(),
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: Insets.paddingMedium, bottom: Insets.paddingSmall),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(
                    theme.colorScheme.onSecondaryContainer),
                side: const MaterialStatePropertyAll(BorderSide.none),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.insert_photo_outlined,
                  ),
                  const SizedBox(width: Insets.paddingSmall),
                  Text(l10n.profilePhotoUpload),
                ],
              ),
            ),
          ),
          Divider(
            color: theme.colorScheme.outlineVariant,
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: Insets.paddingMedium, top: Insets.paddingSmall),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(
                    theme.colorScheme.onSecondaryContainer),
                side: const MaterialStatePropertyAll(BorderSide.none),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.camera_alt_outlined,
                  ),
                  const SizedBox(width: Insets.paddingSmall),
                  Text(l10n.profilePhotoTake),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
