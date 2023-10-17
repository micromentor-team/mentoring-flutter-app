import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import '../../shared/text_form_field_widget.dart';

class SignupEntrepreneurCompanyNameScreen extends StatefulWidget {
  const SignupEntrepreneurCompanyNameScreen({Key? key}) : super(key: key);

  @override
  State<SignupEntrepreneurCompanyNameScreen> createState() =>
      _SignupEntrepreneurCompanyNameScreenState();
}

class _SignupEntrepreneurCompanyNameScreenState
    extends State<SignupEntrepreneurCompanyNameScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _businessName;

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
      title: l10n.signupBusinessNameTitle,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.signupBusinessNameInputLabel,
          hint: l10n.signupBusinessNameInputHint,
          onChanged: (value) {
            setState(() {
              _businessName = value;
            });
          },
        ),
      ),
      isNextEnabled: _businessName?.isNotEmpty ?? false,
      onNextPressed: () {
        _registrationModel.updateUserInput.companyName = _businessName;
        context.push(Routes.signupEntrepreneurCompanyWebsite.path);
      },
    );
  }
}
