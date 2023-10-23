import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../../utilities/debug_logger.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/multi_select_chips.dart';
import 'components/edit_template.dart';

class EditMentoringPreferencesScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditMentoringPreferencesScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditMentoringPreferencesScreen> createState() =>
      _EditMentoringPreferencesScreenState();
}

class _EditMentoringPreferencesScreenState
    extends State<EditMentoringPreferencesScreen>
    with NavigationMixin<EditMentoringPreferencesScreen> {
  late final UserProvider _userProvider;
  List<SelectChip> _selectedChips = [];

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    // TODO - Set preselected values from userData
  }

  List<SelectChip> _createPreferenceChips(AppLocalizations l10n) {
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
        chips: _createPreferenceChips(l10n),
        onSelectedChipsChanged: (chips) {
          setState(() => _selectedChips = chips);
          DebugLogger.info(_selectedChips.toString()); //TODO - Use value
        },
      ),
      editUserProfile: () => _userProvider.updateMentorsGroupMembership(
        input: Input$MentorsGroupMembershipInput(
          id: widget.userData.groupMemberships
              .firstWhere((g) => g.groupIdent == GroupIdent.mentors.name)
              .id,
          // TODO - update mentoring preferences
        ),
      ),
    );
  }
}
