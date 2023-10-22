import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';

import '../../shared/radio_button_cards.dart';
import 'components/edit_template.dart';

class EditCompanyStageScreen extends StatefulWidget {
  const EditCompanyStageScreen({
    super.key,
  });

  @override
  State<EditCompanyStageScreen> createState() => _EditCompanyStageScreenState();
}

class _EditCompanyStageScreenState extends State<EditCompanyStageScreen>
    with NavigationMixin<EditCompanyStageScreen> {
  int _selectedStageIndex = 0;

  @override
  Widget build(BuildContext context) {
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
            onSelectedCardChanged: (index) => _selectedStageIndex = index,
          ),
        ],
      ),
    );
  }
}
