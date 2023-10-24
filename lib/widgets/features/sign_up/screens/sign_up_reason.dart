import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupReasonScreen extends StatefulWidget {
  const SignupReasonScreen({Key? key}) : super(key: key);

  @override
  State<SignupReasonScreen> createState() => _SignupReasonScreenState();
}

class _SignupReasonScreenState extends State<SignupReasonScreen> {
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;
  String? _text;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _isEntrepreneur =
        _registrationModel.updateUserInput.userType == UserType.entrepreneur;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: _isEntrepreneur
          ? l10n.signupReasonEntrepreneurTitle
          : l10n.signupReasonMentorTitle,
      subtitle: _isEntrepreneur
          ? l10n.signupReasonEntrepreneurSubtitle
          : l10n.signupReasonMentorSubtitle,
      body: TextFormFieldWidget(
        hint: _isEntrepreneur
            ? l10n.signupReasonEntrepreneurInputHint
            : l10n.signupReasonMentorInputHint,
        maxLength: 1000,
        maxLines: 6,
        onChanged: (value) {
          setState(() {
            _text = value;
          });
        },
      ),
      isNextEnabled: _text?.isNotEmpty ?? false,
      onNextPressed: () {
        if (_isEntrepreneur) {
          _registrationModel.updateUserInput.menteeReasonForStartingBusiness =
              _text;
        } else {
          _registrationModel.updateUserInput.mentorReasonForMentoring = _text;
        }
        context.push(Routes.signupCompleted.path);
      },
    );
  }
}
