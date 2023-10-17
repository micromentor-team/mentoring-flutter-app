import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import '../../shared/text_form_field_widget.dart';

class SignupEntrepreneurWebsiteScreen extends StatefulWidget {
  const SignupEntrepreneurWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<SignupEntrepreneurWebsiteScreen> createState() =>
      _SignupEntrepreneurWebsiteScreenState();
}

class _SignupEntrepreneurWebsiteScreenState
    extends State<SignupEntrepreneurWebsiteScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _website;

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
      title: l10n.signupBusinessWebsiteTitle,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.signupBusinessWebsiteInputLabel,
          hint: l10n.signupBusinessWebsiteInputHint,
          onChanged: (value) {
            setState(() {
              _website = value;
            });
          },
        ),
      ),
      onNextPressed: () {
        _registrationModel.updateUserInput.companyWebsite = _website;
        context.push(Routes.signupEntrepreneurCompanyReason.path);
      },
    );
  }
}
