import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupEntrepreneurCompanyNameScreen extends StatefulWidget {
  const SignupEntrepreneurCompanyNameScreen({super.key});

  @override
  State<SignupEntrepreneurCompanyNameScreen> createState() =>
      _SignupEntrepreneurCompanyNameScreenState();
}

class _SignupEntrepreneurCompanyNameScreenState
    extends State<SignupEntrepreneurCompanyNameScreen> {
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _businessNameController;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _businessNameController = TextEditingController(
      text: _registrationModel.updateUserInput.companyName,
    );
  }

  @override
  void dispose() {
    _businessNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.signupBusinessNameTitle,
      subtitle: l10n.signupBusinessNameSubtitle,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.signupBusinessNameInputLabel,
          maxLength: 50,
          hint: l10n.signupBusinessNameInputHint,
          textController: _businessNameController,
          onChanged: (_) => setState(() {}),
        ),
      ),
      isNextEnabled: _businessNameController.text.isNotEmpty,
      onNextPressed: () {
        _registrationModel.updateUserInput.companyName =
            _businessNameController.text;
        context.push(Routes.signupReason.path);
      },
    );
  }
}
