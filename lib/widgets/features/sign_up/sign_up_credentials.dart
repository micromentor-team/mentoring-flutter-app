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
  bool _enableUpdatesAndNews = false;

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
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final GoRouter router = GoRouter.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupCredentialsTitle,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    label: l10n.signupCredentialsNameFirstInputLabel,
                    hint: l10n.signupCredentialsNameFirstInputHint,
                    onChanged: (value) {
                      setState(() {
                        _firstName = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: Insets.paddingMedium),
                Expanded(
                  child: TextFormFieldWidget(
                    label: l10n.signupCredentialsNameLastInputLabel,
                    hint: l10n.signupCredentialsNameLastInputHint,
                    onChanged: (value) {
                      setState(() {
                        _lastName = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.paddingMedium),
            TextFormFieldWidget(
              label: l10n.signupCredentialsEmailInputLabel,
              hint: l10n.signupCredentialsEmailInputHint,
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
              validator: (value) {
                bool validEmail = EmailValidator.validate(value!);
                if (validEmail != true) {
                  return l10n.signupCredentialsEmailInputError;
                }
                return null;
              },
            ),
            const SizedBox(height: Insets.paddingMedium),
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
              label: l10n.signupCredentialsPasswordInputLabel,
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            const SizedBox(height: Insets.paddingMedium),
            TextFormFieldWidget(
              isPassword: true,
              label: l10n.signupCredentialsPasswordConfirmInputLabel,
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
            const SizedBox(height: Insets.paddingMedium),
            ListTile(
              leading: Checkbox(
                value: _enableUpdatesAndNews,
                onChanged: (value) => setState(
                  () => _enableUpdatesAndNews = value ?? false,
                ),
              ),
              title: Text(
                l10n.signupCredentialsNewsCheckboxLabel,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.secondary,
                ),
              ),
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
        _registrationModel.userPreferencesInput.enableUpdatesAndNews =
            _enableUpdatesAndNews;
        router.push(Routes.signupPhone.path);
      },
    );
  }
}
