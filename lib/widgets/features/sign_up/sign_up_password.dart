import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/password_warning.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:mm_flutter_app/widgets/shared/text_form_field_widget.dart';
import 'package:provider/provider.dart';

import 'dart:core';

class SignupPasswordScreen extends StatefulWidget {
  const SignupPasswordScreen({super.key});

  @override
  State<SignupPasswordScreen> createState() => _SignupPasswordScreenState();
}

class _SignupPasswordScreenState extends State<SignupPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  late final UserRegistrationModel _registrationModel;
  final RegExp symbolOrNumberPattern = RegExp(r'[!@#$%^&*0-9]');
  String? _password;
  String? _confirmPassword;
  bool passWarn = true;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  String measurePasswordStrength(String password) {
    if (password.length < 8) {
      return "weak"; // Password is too short
    }

    bool containsLowercase = password.contains(RegExp(r'[a-z]'));
    bool containsUppercase = password.contains(RegExp(r'[A-Z]'));
    bool containsNumber = password.contains(RegExp(r'[0-9]'));
    bool containsSpecial = password.contains(RegExp(r'[!@#\$%^&*()]'));

    int criteriaMet = 0;

    if (containsLowercase) criteriaMet++;
    if (containsUppercase) criteriaMet++;
    if (containsNumber) criteriaMet++;
    if (containsSpecial) criteriaMet++;

    if (criteriaMet >= 3) {
      passWarn = false;
      return "strong"; // Password meets at least 3 criteria
    } else if (criteriaMet == 2) {
      passWarn = false;
      return 'moderate'; // Password meets 2 criteria
    } else {
      passWarn = true;
      return 'weak'; // Password meets 1 or 0 criteria
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupPasswordTitle,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormFieldWidget(
              isPassword: true,
              textController: _pass,
              validator: (val) {
                if (val == null) {
                  return 'Empty';
                }
                if (val != _confirmPass.text) {
                  return 'Not Match';
                }
                return null;
              },
              label: l10n.signupPasswordInputLabel,
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            TextFormFieldWidget(
              isPassword: true,
              textController: _confirmPass,
              label: l10n.signupPasswordConfirmInputLabel,
              onChanged: (value) {
                setState(() {
                  _confirmPassword = value;
                });
              },
              validator: (val) {
                if (val == null) {
                  return 'Empty';
                }
                if (val != _pass.text) {
                  return 'Not Match';
                }
                return null;
              },
            ),
            const SizedBox(
              height: Insets.paddingExtraLarge,
            ),
            PasswordWarning(
              warning: passWarn,
              warningMessage:
                  "Password strength: ${measurePasswordStrength(_password ?? "")}",
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            PasswordWarning(
              warning: _password != null ? _password!.length < 8 : true,
              warningMessage: "Must be atleast 8 characters",
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            // TODO get email for this warning
            PasswordWarning(
              warning: _password != null ? _password!.contains('email') : false,
              warningMessage: "Can't include your email address",
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            PasswordWarning(
              warning: _password != null
                  ? !symbolOrNumberPattern.hasMatch(_password!)
                  : true,
              warningMessage: "Must include at least 1 symbol or number",
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            PasswordWarning(
              warning: _password != null ? _password!.contains(' ') : false,
              warningMessage: "Can't contain spaces",
            ),
          ],
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
        rightOnPress: (_password?.isNotEmpty ?? false) &&
                (_confirmPassword?.isNotEmpty ?? false)
            ? () {
                if (_formKey.currentState!.validate()) {
                  _registrationModel.signUpUserInput.password = _password;
                  context.push(Routes.signupVerification.path);
                }
              }
            : null,
      ),
    );
  }
}
