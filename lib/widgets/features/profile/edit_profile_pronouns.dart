import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:provider/provider.dart';

import '../../../providers/content_provider.dart';
import '../../../providers/user_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../sign_up/components/checkbox_list_and_form.dart';
import 'components/edit_template.dart';

class EditProfilePronounsScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditProfilePronounsScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditProfilePronounsScreen> createState() =>
      _EditProfilePronounsScreenState();
}

class _EditProfilePronounsScreenState extends State<EditProfilePronounsScreen>
    with NavigationMixin<EditProfilePronounsScreen> {
  late final UserProvider _userProvider;
  late final ContentProvider _contentProvider;
  final List<String> _selections = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _selections.addAll(widget.userData.pronouns.map((e) => e.textId));
  }

  List<LabeledCheckbox> _createCheckboxes() {
    return _contentProvider.presetPronounOptions!
        .map(
          (e) => _createLabeledCheckbox(e.translatedValue!, e.textId),
        )
        .toList();
  }

  LabeledCheckbox _createLabeledCheckbox(String label, String textId) {
    return LabeledCheckbox(
      label: label,
      id: textId,
      value: _selections.contains(textId),
      selectionOrder: _selections.indexOf(textId) + 1,
      onChanged: (bool isSelected) {
        setState(() {
          if (isSelected) {
            _selections.add(textId);
          } else {
            _selections.remove(textId);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionAboutPronounsTitle,
      subtitle: l10n.profileEditSectionAboutPronounsSubtitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Column(
        children: [
          ..._createCheckboxes(),
        ],
      ),
      editUserProfile: () => _userProvider.updateUserData(
        input: Input$UserInput(
          id: widget.userData.id,
          pronounsTextIds: _selections,
        ),
      ),
    );
  }
}
