import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupReasonScreen extends StatefulWidget {
  const SignupReasonScreen({super.key});

  @override
  State<SignupReasonScreen> createState() => _SignupReasonScreenState();
}

class _SignupReasonScreenState extends State<SignupReasonScreen> {
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;
  late final TextEditingController _reasonController;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _isEntrepreneur =
        _registrationModel.updateUserInput.userType == UserType.entrepreneur;
    _reasonController = TextEditingController(
      text: _isEntrepreneur
          ? _registrationModel.updateUserInput.menteeReasonForStartingBusiness
          : _registrationModel.updateUserInput.mentorReasonForMentoring,
    );
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
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
        textController: _reasonController,
        onChanged: (_) => setState(() {}),
      ),
      isNextEnabled: _reasonController.text.isNotEmpty,
      onNextPressed: () {
        if (_isEntrepreneur) {
          _registrationModel.updateUserInput.menteeReasonForStartingBusiness =
              _reasonController.text;
        } else {
          _registrationModel.updateUserInput.mentorReasonForMentoring =
              _reasonController.text;
        }
        context.push(Routes.signupCompleted.path);
      },
    );
  }
}
