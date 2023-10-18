import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import '../../shared/text_form_field_widget.dart';

class SignupEntrepreneurCompanyReasonScreen extends StatefulWidget {
  const SignupEntrepreneurCompanyReasonScreen({Key? key}) : super(key: key);

  @override
  State<SignupEntrepreneurCompanyReasonScreen> createState() =>
      _SignupEntrepreneurCompanyReasonScreenState();
}

class _SignupEntrepreneurCompanyReasonScreenState
    extends State<SignupEntrepreneurCompanyReasonScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _text;

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
      progress: SignUpProgress.three,
      title: l10n.signupBusinessReasonTitle,
      body: TextFormFieldWidget(
        hint: l10n.signupBusinessReasonInputHint,
        maxLength: 280,
        maxLines: 6,
        onChanged: (value) {
          setState(() {
            _text = value;
          });
        },
      ),
      isNextEnabled: _text?.isNotEmpty ?? false,
      onNextPressed: () {
        _registrationModel.updateUserInput.menteeReasonForStartingBusiness =
            _text;
        context.push(Routes.signupCompleted.path);
      },
    );
  }
}
