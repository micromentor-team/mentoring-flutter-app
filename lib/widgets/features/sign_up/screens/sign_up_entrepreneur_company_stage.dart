import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/radio_button_cards.dart';
import '../components/sign_up_template.dart';

class SignupEntrepreneurCompanyStageScreen extends StatefulWidget {
  const SignupEntrepreneurCompanyStageScreen({super.key});

  @override
  State<SignupEntrepreneurCompanyStageScreen> createState() =>
      _SignupEntrepreneurCompanyStageScreenState();
}

class _SignupEntrepreneurCompanyStageScreenState
    extends State<SignupEntrepreneurCompanyStageScreen> {
  late final UserRegistrationModel _registrationModel;
  int _selectedStageIndex = 0;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupBusinessStageTitle,
      subtitle: l10n.signupBusinessStageSubtitle,
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
      onNextPressed: () {
        switch (_selectedStageIndex) {
          case 0:
            _registrationModel.updateUserInput.companyStageTextId =
                CompanyStageTextId.idea.name;
            break;
          case 1:
            _registrationModel.updateUserInput.companyStageTextId =
                CompanyStageTextId.operational.name;
            break;
          case 2:
            _registrationModel.updateUserInput.companyStageTextId =
                CompanyStageTextId.earning.name;
            break;
          case 3:
            _registrationModel.updateUserInput.companyStageTextId =
                CompanyStageTextId.profitable.name;
            break;
          default:
            _registrationModel.updateUserInput.companyStageTextId = null;
            break;
        }
        context.push(Routes.signupEntrepreneurCompanyName.path);
      },
    );
  }
}
