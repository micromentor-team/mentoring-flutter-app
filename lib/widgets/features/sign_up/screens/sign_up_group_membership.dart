import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/radio_button_cards.dart';
import '../components/sign_up_template.dart';

class SignupGroupMembershipScreen extends StatefulWidget {
  const SignupGroupMembershipScreen({super.key});

  @override
  State<SignupGroupMembershipScreen> createState() =>
      _SignupGroupMembershipScreenState();
}

class _SignupGroupMembershipScreenState
    extends State<SignupGroupMembershipScreen> {
  late final UserRegistrationModel _registrationModel;
  final List<UserType> _groupMemberships = [
    UserType.entrepreneur,
    UserType.mentor,
  ];
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _selectedIndex = _registrationModel.updateUserInput.userType != null
        ? _groupMemberships
            .indexOf(_registrationModel.updateUserInput.userType!)
        : 0;
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
            initialSelection: _selectedIndex,
            onSelectedCardChanged: (value) =>
                setState(() => _selectedIndex = value),
          ),
        ],
      ),
      onNextPressed: () {
        _registrationModel.updateUserInput.userType =
            _groupMemberships[_selectedIndex];
        if (_groupMemberships[_selectedIndex] == UserType.entrepreneur) {
          _registrationModel.updateUserInput.clearMentorFields();
        } else {
          _registrationModel.updateUserInput.clearEntrepreneurFields();
        }
        context.push(Routes.signupExpertises.path);
      },
    );
  }
}
