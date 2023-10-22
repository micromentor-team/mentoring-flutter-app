import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../shared/multi_select_chips.dart';
import 'components/edit_template.dart';

class EditMentoringPreferencesScreen extends StatefulWidget {
  const EditMentoringPreferencesScreen({
    super.key,
  });

  @override
  State<EditMentoringPreferencesScreen> createState() =>
      _EditMentoringPreferencesScreenState();
}

class _EditMentoringPreferencesScreenState
    extends State<EditMentoringPreferencesScreen>
    with NavigationMixin<EditMentoringPreferencesScreen> {
  List<SelectChip> _selectedChips = [];

  List<SelectChip> createPreferenceChips(AppLocalizations l10n) {
    // TODO: Implement in backend and return with content provider
    List<String> translations = [
      l10n.profileEditSectionMentorPreferencesOption1,
      l10n.profileEditSectionMentorPreferencesOption2,
      l10n.profileEditSectionMentorPreferencesOption3,
      l10n.profileEditSectionMentorPreferencesOption4,
      l10n.profileEditSectionMentorPreferencesOption5,
      l10n.profileEditSectionMentorPreferencesOption6,
    ];
    return translations
        .map((e) => SelectChip(chipName: e, textId: e))
        .toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionMentorPreferencesTitle,
      subtitle: l10n.profileEditSectionMentorPreferencesSubtitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: CreateMultiSelectChips(
        chips: createPreferenceChips(l10n),
        onSelectedChipsChanged: (chips) => setState(
          () => _selectedChips = chips,
        ),
      ),
    );
  }
}
