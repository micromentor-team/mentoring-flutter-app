import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/autocomplete_picker.dart';
import '../components/edit_template.dart';

class EditOtherLanguagesScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditOtherLanguagesScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditOtherLanguagesScreen> createState() =>
      _EditOtherLanguagesScreenState();
}

class _EditOtherLanguagesScreenState extends State<EditOtherLanguagesScreen>
    with NavigationMixin<EditOtherLanguagesScreen> {
  late final UserProvider _userProvider;
  late final ContentProvider _contentProvider;
  final _otherLanguagesController = TextfieldTagsController();

  final Set<String> _initialValue = {};

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _initialValue.addAll(
      widget.userData.spokenLanguages.map((e) => e.translatedValue!),
    );
  }

  @override
  void dispose() {
    try {
      _otherLanguagesController.dispose();
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
        controller: _otherLanguagesController,
        options: _contentProvider.languageOptions!
            .map((e) => e.translatedValue!)
            .toList(),
        selectedOptions: _initialValue,
      ),
      editUserProfile: () => _userProvider.updateUserData(
        input: Input$UserInput(
          id: widget.userData.id,
          spokenLanguagesTextIds: _otherLanguagesController.getTags
              ?.map(
                (t) => _contentProvider.languageOptions!
                    .firstWhere((o) => o.translatedValue! == t)
                    .textId,
              )
              .toList(),
        ),
      ),
    );
  }
}
