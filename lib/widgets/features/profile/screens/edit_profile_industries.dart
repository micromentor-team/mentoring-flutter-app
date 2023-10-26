import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/operations_user.graphql.dart';
import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/multi_select_chips.dart';
import '../components/edit_template.dart';

class EditIndustriesScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditIndustriesScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditIndustriesScreen> createState() => _EditIndustriesScreenState();
}

class _EditIndustriesScreenState extends State<EditIndustriesScreen>
    with NavigationMixin<EditIndustriesScreen> {
  late final ContentProvider _contentProvider;
  late final UserProvider _userProvider;
  late final List<SelectChip> _industryChips;
  late final bool _isEntrepreneur;
  late final int _maxSelections;
  late final List<SelectChip> _initialValues;

  List<SelectChip> _selectedChips = [];

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _isEntrepreneur = _userProvider.user!.seeksHelp;
    _industryChips = _contentProvider.industryOptions!
        .map(
          (e) => SelectChip(
            chipName: e.translatedValue!,
            textId: e.textId,
          ),
        )
        .toList();
    _industryChips.sort((a, b) => a.chipName.compareTo(b.chipName));
    _maxSelections = _isEntrepreneur
        ? Limits.profileEntrepreneurIndustryMaxSize
        : Limits.profileMentorIndustryMaxSize;

    // Set preselected industries
    final maybeMentorGroupMembership = widget.userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentors.name)
        .firstOrNull
        ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null);
    final maybeMenteeGroupMembership = widget.userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentees.name)
        .firstOrNull
        ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null);
    if (_isEntrepreneur) {
      _initialValues = maybeMenteeGroupMembership!.industry != null
          ? [
              SelectChip(
                chipName: maybeMenteeGroupMembership.industry!.translatedValue!,
                textId: maybeMenteeGroupMembership.industry!.textId,
              )
            ]
          : [];
    } else {
      _initialValues = maybeMentorGroupMembership!.industries
          .map(
            (e) => SelectChip(chipName: e.translatedValue!, textId: e.textId),
          )
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return EditTemplate(
      title: _isEntrepreneur
          ? l10n.profileEditSectionBusinessIndustryTitle
          : l10n.profileEditSectionMentorIndustryTitle,
      subtitle: _isEntrepreneur
          ? l10n.profileEditSectionBusinessIndustrySubtitle
          : l10n.profileEditSectionMentorIndustrySubtitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: CreateMultiSelectChips(
        chips: _industryChips,
        maxSelection: _maxSelections,
        onSelectedChipsChanged: (chips) {
          setState(() => _selectedChips = chips);
        },
        initialSelection: _initialValues,
      ),
      editUserProfile: _isEntrepreneur
          ? () => _userProvider.updateMenteesGroupMembership(
                input: Input$MenteesGroupMembershipInput(
                  id: widget.userData.groupMemberships
                      .firstWhere(
                          (g) => g.groupIdent == GroupIdent.mentees.name)
                      .id,
                  industryTextId: _selectedChips.firstOrNull?.textId,
                ),
              )
          : () => _userProvider.updateMentorsGroupMembership(
                input: Input$MentorsGroupMembershipInput(
                    id: widget.userData.groupMemberships
                        .firstWhere(
                            (g) => g.groupIdent == GroupIdent.mentors.name)
                        .id,
                    industriesTextIds:
                        _selectedChips.map((e) => e.textId).toList()),
              ),
    );
  }
}
