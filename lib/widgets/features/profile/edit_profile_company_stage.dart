import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../shared/radio_button_cards.dart';
import 'components/edit_template.dart';

class EditCompanyStageScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyStageScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyStageScreen> createState() => _EditCompanyStageScreenState();
}

class _EditCompanyStageScreenState extends State<EditCompanyStageScreen>
    with NavigationMixin<EditCompanyStageScreen> {
  late final UserProvider _userProvider;
  final List<String> _stageTextIds = [
    CompanyStageTextId.idea.name,
    CompanyStageTextId.operational.name,
    CompanyStageTextId.earning.name,
    CompanyStageTextId.profitable.name,
  ];
  late final int _initialValue;
  int _selectedStageIndex = 0;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    if (widget.userData.companies.firstOrNull?.companyStage?.textId != null) {
      _initialValue = _stageTextIds.indexOf(
        widget.userData.companies.firstOrNull!.companyStage!.textId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return EditTemplate(
      title: l10n.profileEditSectionBusinessStageTitle,
      subtitle: l10n.profileEditSectionBusinessStageSubtitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Column(
        children: [
          RadioButtonCards(
            title: [
              l10n.signupBusinessStageCard1Title,
              l10n.signupBusinessStageCard2Title,
              l10n.signupBusinessStageCard3Title,
              l10n.signupBusinessStageCard4Title,
            ],
            subtitle: [
              l10n.signupBusinessStageCard1Description,
              l10n.signupBusinessStageCard2Description,
              l10n.signupBusinessStageCard3Description,
              l10n.signupBusinessStageCard4Description,
            ],
            titleIcon: const [
              Icon(Icons.lightbulb_outlined),
              Icon(Icons.storefront_outlined),
              Icon(Icons.attach_money_outlined),
              Icon(Icons.auto_graph_outlined)
            ],
            imageAssetName: const [null, null, null, null],
            onSelectedCardChanged: (index) {
              _selectedStageIndex = index;
            },
            initialSelection: _initialValue,
          ),
        ],
      ),
      editUserProfile: () => _userProvider.updateCompany(
        input: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          companyStageTextId: _stageTextIds[_selectedStageIndex],
        ),
      ),
    );
  }
}
