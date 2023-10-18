import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:mm_flutter_app/widgets/shared/text_form_field_widget.dart';
import 'package:provider/provider.dart';

class SignupCredentialsScreen extends StatefulWidget {
  const SignupCredentialsScreen({super.key});

  @override
  State<SignupCredentialsScreen> createState() =>
      _SignupCredentialsScreenState();
}

class _SignupCredentialsScreenState extends State<SignupCredentialsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _password;
  String? _confirmPassword;

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
    final GoRouter router = GoRouter.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupCreateAccountTitle,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormFieldWidget(
              label: l10n.signupCreateAccountNameFirstInputLabel,
              hint: l10n.signupCreateAccountNameFirstInputHint,
              maxLength: 50,
              onChanged: (value) {
                setState(() {
                  _firstName = value;
                });
              },
            ),
            const SizedBox(height: Insets.paddingSmall),
            TextFormFieldWidget(
              label: l10n.signupCreateAccountNameLastInputLabel,
              hint: l10n.signupCreateAccountNameLastInputHint,
              maxLength: 50,
              onChanged: (value) {
                setState(() {
                  _lastName = value;
                });
              },
            ),
            const SizedBox(height: Insets.paddingSmall),
            TextFormFieldWidget(
              label: l10n.signupCreateAccountEmailInputLabel,
              hint: l10n.signupCreateAccountEmailInputHint,
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
              validator: (value) {
                bool validEmail = EmailValidator.validate(value!);
                if (validEmail != true) {
                  return l10n.signupCreateAccountEmailInputError;
                }
                return null;
              },
            ),
            const SizedBox(height: Insets.paddingSmall),
            TextFormFieldWidget(
              isPassword: true,
              validator: (val) {
                if (val == null) {
                  return 'Empty';
                }
                if (val != _confirmPassword) {
                  return 'Not Match';
                }
                return null;
              },
              label: l10n.signupCreateAccountPasswordInputLabel,
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
              label: l10n.signupCreateAccountPasswordConfirmInputLabel,
              onChanged: (value) {
                setState(() {
                  _confirmPassword = value;
                });
              },
              validator: (val) {
                if (val == null) {
                  return 'Empty';
                }
                if (val != _password) {
                  return 'Not Match';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      isNextEnabled: (_firstName?.isNotEmpty ?? false) &&
          (_lastName?.isNotEmpty ?? false) &&
          (_email?.isNotEmpty ?? false) &&
          (_password?.isNotEmpty ?? false) &&
          (_confirmPassword?.isNotEmpty ?? false),
      onNextPressed: () async {
        if (!_formKey.currentState!.validate()) {
          return;
        }
        _registrationModel.signUpUserInput.email = _email;
        _registrationModel.signUpUserInput.password = _password;
        _registrationModel.updateUserInput.firstName = _firstName;
        _registrationModel.updateUserInput.lastName = _lastName;
        router.push(Routes.signupPhone.path);
      },
    );
  }
}
