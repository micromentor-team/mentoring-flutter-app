import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../__generated/schema/schema.graphql.dart';
import '../../../constants/app_constants.dart';
import '../../../providers/content_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/multi_select_chips.dart';
import 'components/edit_template.dart';

class EditExpertisesScreen extends StatefulWidget {
  final UserDetailedProfile userData;
  final bool isTopExpertises;

  const EditExpertisesScreen({
    super.key,
    required this.userData,
    required this.isTopExpertises,
  });

  @override
  State<EditExpertisesScreen> createState() => _EditExpertisesScreenState();
}

class _EditExpertisesScreenState extends State<EditExpertisesScreen>
    with NavigationMixin<EditExpertisesScreen> {
  late final ContentProvider _contentProvider;
  late final UserProvider _userProvider;
  late final List<SelectChip> _expertiseChips;
  late final bool _isEntrepreneur;
  late final List<SelectChip> _initialValues;
  final int _maxSelections = 3;

  List<SelectChip> _selectedChips = [];

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _isEntrepreneur = _userProvider.user!.seeksHelp;
    _expertiseChips = _contentProvider.expertiseOptions!
        .map(
          (e) => SelectChip(
            chipName: e.translatedValue!,
            textId: e.textId,
          ),
        )
        .toList();
    _expertiseChips.sort((a, b) => a.chipName.compareTo(b.chipName));
    // Set preselected expertises
    final maybeMentorGroupMembership = widget.userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentors.name)
        .firstOrNull
        ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null);
    final maybeMenteeGroupMembership = widget.userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentees.name)
        .firstOrNull
        ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null);
    if (_isEntrepreneur) {
      _initialValues = maybeMenteeGroupMembership!.soughtExpertises
          .map(
              (e) => SelectChip(chipName: e.translatedValue!, textId: e.textId))
          .toList();
    } else {
      _initialValues = maybeMentorGroupMembership!.expertises
          .map(
              (e) => SelectChip(chipName: e.translatedValue!, textId: e.textId))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final String title;
    final String subtitle;
    if (_isEntrepreneur) {
      if (widget.isTopExpertises) {
        title = l10n.profileEditSectionBusinessTopicsTopTitle;
        subtitle = l10n.profileEditSectionBusinessTopicsTopSubtitle;
      } else {
        title = l10n.profileEditSectionBusinessTopicsAdditionalTitle;
        subtitle = l10n.profileEditSectionBusinessTopicsAdditionalSubtitle;
      }
    } else {
      if (widget.isTopExpertises) {
        title = l10n.profileEditSectionMentorExpertisesTopTitle;
        subtitle = l10n.profileEditSectionMentorExpertisesTopSubtitle;
      } else {
        title = l10n.profileEditSectionMentorExpertisesAdditionalTitle;
        subtitle = l10n.profileEditSectionMentorExpertisesAdditionalSubtitle;
      }
    }

    return EditTemplate(
      title: title,
      subtitle: subtitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: CreateMultiSelectChips(
        chips: _expertiseChips,
        maxSelection: _maxSelections,
        onSelectedChipsChanged: (chips) {
          setState(() => _selectedChips = chips);
        },
        initialSelection: _initialValues,
      ),
      editUserProfile: !widget.isTopExpertises
          ? null
          : _isEntrepreneur // TODO - implement query for additional expertises
              ? () => _userProvider.updateMenteesGroupMembership(
                    input: Input$MenteesGroupMembershipInput(
                        id: widget.userData.groupMemberships
                            .firstWhere(
                                (g) => g.groupIdent == GroupIdent.mentees.name)
                            .id,
                        soughtExpertisesTextIds:
                            _selectedChips.map((e) => e.textId).toList()),
                  )
              : () => _userProvider.updateMentorsGroupMembership(
                    input: Input$MentorsGroupMembershipInput(
                      id: widget.userData.groupMemberships
                          .firstWhere(
                              (g) => g.groupIdent == GroupIdent.mentors.name)
                          .id,
                      expertisesTextIds:
                          _selectedChips.map((e) => e.textId).toList(),
                    ),
                  ),
    );
  }
}
