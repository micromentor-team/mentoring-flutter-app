import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'edit_template.dart';

class EditProfilePronounScreen extends StatelessWidget {
  const EditProfilePronounScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return EditTemplate(
      title: l10n.pronouns,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Text(
              l10n.editPronounsSubtitle,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
