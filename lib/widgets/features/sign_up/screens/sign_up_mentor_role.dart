import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupMentorRoleScreen extends StatefulWidget {
  const SignupMentorRoleScreen({super.key});

  @override
  State<SignupMentorRoleScreen> createState() => _SignupMentorRoleScreenState();
}

class _SignupMentorRoleScreenState extends State<SignupMentorRoleScreen> {
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _jobTitleController;
  late final TextEditingController _companyNameController;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _jobTitleController = TextEditingController(
      text: _registrationModel.updateUserInput.experienceJobTitle,
    );
    _companyNameController = TextEditingController(
      text: _registrationModel.updateUserInput.experienceBusinessName,
    );
  }

  @override
  void dispose() {
    _jobTitleController.dispose();
    _companyNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.signupRoleTitle,
      subtitle: l10n.signupRoleSubtitle,
      body: Column(
        children: [
          Form(
            child: TextFormFieldWidget(
              label: l10n.signupRoleJobTitleInputLabel,
              hint: l10n.signupRoleJobTitleInputHint,
              textController: _jobTitleController,
              onChanged: (_) => setState(() {}),
            ),
          ),
          const SizedBox(
            height: Insets.paddingMedium,
          ),
          Form(
            child: TextFormFieldWidget(
              label: l10n.signupRoleCompanyInputLabel,
              hint: l10n.signupRoleCompanyInputHint,
              textController: _companyNameController,
              onChanged: (_) => setState(() {}),
            ),
          ),
        ],
      ),
      isNextEnabled: _jobTitleController.text.isNotEmpty &&
          _companyNameController.text.isNotEmpty,
      onNextPressed: () {
        _registrationModel.updateUserInput.experienceJobTitle =
            _jobTitleController.text;
        _registrationModel.updateUserInput.experienceBusinessName =
            _companyNameController.text;
        context.push(Routes.signupReason.path);
      },
    );
  }
}
