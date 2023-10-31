import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupCredentialsScreen extends StatefulWidget {
  const SignupCredentialsScreen({super.key});

  @override
  State<SignupCredentialsScreen> createState() =>
      _SignupCredentialsScreenState();
}

class _SignupCredentialsScreenState extends State<SignupCredentialsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  late bool _enableUpdatesAndNews;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _firstNameController = TextEditingController(
      text: _registrationModel.updateUserInput.firstName,
    );
    _lastNameController = TextEditingController(
      text: _registrationModel.updateUserInput.lastName,
    );
    _emailController = TextEditingController(
      text: _registrationModel.signUpUserInput.email,
    );
    _passwordController = TextEditingController(
      text: _registrationModel.signUpUserInput.password,
    );
    _confirmPasswordController = TextEditingController(
      text: _registrationModel.signUpUserInput.password,
    );
    _enableUpdatesAndNews =
        _registrationModel.userPreferencesInput.enableUpdatesAndNews ?? false;
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
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
                    textController: _firstNameController,
                    onChanged: (_) => setState(() {}),
                  ),
                ),
                const SizedBox(width: Insets.paddingMedium),
                Expanded(
                  child: TextFormFieldWidget(
                    label: l10n.signupCredentialsNameLastInputLabel,
                    hint: l10n.signupCredentialsNameLastInputHint,
                    textController: _lastNameController,
                    onChanged: (_) => setState(() {}),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.paddingMedium),
            TextFormFieldWidget(
              label: l10n.signupCredentialsEmailInputLabel,
              hint: l10n.signupCredentialsEmailInputHint,
              textController: _emailController,
              onChanged: (_) => setState(() {}),
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
                if (val != _confirmPasswordController.text) {
                  return 'Not Match';
                }
                return null;
              },
              label: l10n.signupCredentialsPasswordInputLabel,
              textController: _passwordController,
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: Insets.paddingMedium),
            TextFormFieldWidget(
              isPassword: true,
              label: l10n.signupCredentialsPasswordConfirmInputLabel,
              textController: _confirmPasswordController,
              onChanged: (_) => setState(() {}),
              validator: (val) {
                if (val == null) {
                  return 'Empty';
                }
                if (val != _passwordController.text) {
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
      isNextEnabled: _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _confirmPasswordController.text.isNotEmpty,
      onNextPressed: () async {
        if (!_formKey.currentState!.validate()) {
          return;
        }
        _registrationModel.signUpUserInput.email = _emailController.text;
        _registrationModel.signUpUserInput.password = _passwordController.text;
        _registrationModel.updateUserInput.firstName =
            _firstNameController.text;
        _registrationModel.updateUserInput.lastName = _lastNameController.text;
        _registrationModel.userPreferencesInput.enableUpdatesAndNews =
            _enableUpdatesAndNews;
        router.push(Routes.signupPhone.path);
      },
    );
  }
}
