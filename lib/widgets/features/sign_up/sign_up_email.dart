import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../shared/text_form_field_widget.dart';

class SignupEmailScreen extends StatefulWidget {
  const SignupEmailScreen({super.key});

  @override
  State<SignupEmailScreen> createState() => _SignupEmailScreenState();
}

class _SignupEmailScreenState extends State<SignupEmailScreen> {
  final _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  String? _email;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _registrationModel.clear();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupEmailTitle,
      body: Form(
        key: _formKey,
        child: TextFormFieldWidget(
          label: l10n.signupEmailInputLabel,
          hint: l10n.signupEmailInputHint,
          onChanged: (value) {
            setState(() {
              _email = value;
            });
          },
          validator: (value) {
            bool validEmail = EmailValidator.validate(value!);
            if (validEmail != true) {
              return l10n.signupEmailInputError;
            }
            return null;
          },
        ),
      ),
      footer: SignUpIconFooter(
          icon: Icons.lock_outline, text: l10n.signupFooterHidden),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.actionPrevious,
        rightButtonText: l10n.actionNext,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _email?.isNotEmpty ?? false
            ? () {
                if (_formKey.currentState!.validate()) {
                  _registrationModel.signUpUserInput.email = _email;
                  context.push(Routes.signupPassword.path);
                }
              }
            : null,
      ),
    );
  }
}
