import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';
import '../../../providers/content_provider.dart';
import '../../shared/autocomplete_picker.dart';
import 'edit_template.dart';

class EditPreferredLanguageScreen extends StatefulWidget {
  const EditPreferredLanguageScreen({Key? key}) : super(key: key);

  @override
  State<EditPreferredLanguageScreen> createState() =>
      _EditPreferredLanguageScreenState();
}

class _EditPreferredLanguageScreenState
    extends State<EditPreferredLanguageScreen> {
  final _preferredLanguagesController = TextfieldTagsController();
  late final ContentProvider _contentProvider;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
  }

  @override
  void dispose() {
    try {
      _preferredLanguagesController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return EditTemplate(
      title: l10n.profileEditLanguagePreferred,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: Text(
                l10n.profileEditLanguagePreferredSubtitle,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.secondary),
                textAlign: TextAlign.center,
              ),
            ),
            AutocompletePicker(
              controller: _preferredLanguagesController,
              options: _contentProvider.languageOptions!
                  .map((e) => e.translatedValue!)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
