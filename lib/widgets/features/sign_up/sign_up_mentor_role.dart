import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';
import '../../shared/text_form_field_widget.dart';

class SignupMentorRoleScreen extends StatefulWidget {
  const SignupMentorRoleScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorRoleScreen> createState() => _SignupMentorRoleScreenState();
}

class _SignupMentorRoleScreenState extends State<SignupMentorRoleScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _jobTitle;
  String? _companyName;

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
      progress: SignUpProgress.two,
      title: l10n.signupRoleTitle,
      body: Column(
        children: [
          Form(
            child: TextFormFieldWidget(
              label: l10n.signupRoleJobTitleInputLabel,
              hint: l10n.signupRoleJobTitleInputHint,
              onChanged: (value) {
                setState(() {
                  _jobTitle = value;
                });
              },
            ),
          ),
          const SizedBox(
            height: Insets.paddingMedium,
          ),
          Form(
            child: TextFormFieldWidget(
              label: l10n.signupRoleCompanyInputLabel,
              hint: l10n.signupRoleCompanyInputHint,
              onChanged: (value) {
                setState(() {
                  _companyName = value;
                });
              },
            ),
          ),
        ],
      ),
      isNextEnabled: (_jobTitle?.isNotEmpty ?? false) &&
          (_companyName?.isNotEmpty ?? false),
      onNextPressed: () {
        _registrationModel.updateUserInput.jobTitle = _jobTitle;
        _registrationModel.updateUserInput.companyName = _companyName;
        context.push(Routes.signupEntrepreneurCompanyReason.path);
      },
    );
  }
}
