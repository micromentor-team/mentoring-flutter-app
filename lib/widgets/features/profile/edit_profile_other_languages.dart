import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../providers/content_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/autocomplete_picker.dart';
import 'components/edit_template.dart';

class EditOtherLanguagesScreen extends StatefulWidget {
  const EditOtherLanguagesScreen({Key? key}) : super(key: key);

  @override
  State<EditOtherLanguagesScreen> createState() =>
      _EditOtherLanguagesScreenState();
}

class _EditOtherLanguagesScreenState extends State<EditOtherLanguagesScreen>
    with NavigationMixin<EditOtherLanguagesScreen> {
  final _fluentLanguagesController = TextfieldTagsController();
  late final ContentProvider _contentProvider;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
  }

  @override
  void dispose() {
    try {
      _fluentLanguagesController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionAboutLanguageOthersTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      subtitle: l10n.profileEditSectionAboutLanguageOthersSubtitle,
      body: AutocompletePicker(
        controller: _fluentLanguagesController,
        options: _contentProvider.languageOptions!
            .map((e) => e.translatedValue!)
            .toList(),
      ),
    );
  }
}
