import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/radio_button_cards.dart';
import '../components/sign_up_template.dart';

class SignupGroupMembershipScreen extends StatefulWidget {
  const SignupGroupMembershipScreen({Key? key}) : super(key: key);

  @override
  State<SignupGroupMembershipScreen> createState() =>
      _SignupGroupMembershipScreenState();
}

class _SignupGroupMembershipScreenState
    extends State<SignupGroupMembershipScreen> {
  late final UserRegistrationModel _registrationModel;
  int? selectedNumber = 0;

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
      title: l10n.signupGroupMembershipTitle,
      body: Column(
        children: [
          RadioButtonCards(
            title: [
              l10n.signupGroupMembershipEntrepreneur,
              l10n.signupGroupMembershipMentor,
            ],
            subtitle: [
              l10n.signupGroupMembershipEntrepreneurDescription,
              l10n.signupGroupMembershipMentorDescription,
            ],
            imageAssetName: const [
              Image(image: AssetImage(Assets.entrepreneurIcon)),
              Image(image: AssetImage(Assets.mentorIcon))
            ],
            titleIcon: const [null, null],
            onSelectedCardChanged: (value) =>
                setState(() => selectedNumber = value),
          ),
        ],
      ),
      onNextPressed: () {
        if (selectedNumber == 0) {
          _registrationModel.updateUserInput.userType = UserType.entrepreneur;
          _registrationModel.updateUserInput.clearMentorFields();
        } else {
          _registrationModel.updateUserInput.userType = UserType.mentor;
          _registrationModel.updateUserInput.clearEntrepreneurFields();
        }
        context.push(Routes.signupExpertises.path);
      },
    );
  }
}
