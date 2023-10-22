import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../providers/content_provider.dart';
import '../../../utilities/debug_logger.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/multi_select_chips.dart';
import 'components/edit_template.dart';

class EditIndustriesScreen extends StatefulWidget {
  const EditIndustriesScreen({
    super.key,
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
          DebugLogger.info(_selectedChips.toString()); //TODO
        },
      ),
    );
  }
}
