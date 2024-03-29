import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

List<String> _countryCode = ["US +1", "CA +1"];

class SignupPhoneScreen extends StatefulWidget {
  const SignupPhoneScreen({super.key});

  @override
  State<SignupPhoneScreen> createState() => _SignupPhoneScreenState();
}

class _SignupPhoneScreenState extends State<SignupPhoneScreen> {
  final _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _phoneNumberController;
  String? _selectedCountryCode = _countryCode[0];

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _phoneNumberController = TextEditingController(
      text: _registrationModel.updateUserInput.phoneNumber,
    );
    //TODO: Implement Country code dropdown and initialize here
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupPhoneTitle,
      subtitle: l10n.signupPhoneSubtitle,
      body: Form(
        key: _formKey,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: DropdownButtonFormField(
                isExpanded: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.outline,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.outline,
                      width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                ),
                dropdownColor: theme.colorScheme.surface,
                value: _selectedCountryCode,
                onChanged: (country) => setState(() {
                  _selectedCountryCode = country;
                }),
                items: _countryCode.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: theme.textTheme.bodyLarge!
                            .copyWith(color: theme.colorScheme.outline),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            const SizedBox(
              width: Insets.paddingExtraSmall,
            ),
            Expanded(
              child: TextFormFieldWidget(
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                label: l10n.signupPhoneInputLabel,
                hint: l10n.signupPhoneInputHint,
                textController: _phoneNumberController,
                onChanged: (_) => setState(() {}),
              ),
            ),
          ],
        ),
      ),
      isNextEnabled: _phoneNumberController.text.isNotEmpty,
      onNextPressed: () {
        if (_formKey.currentState!.validate()) {
          _registrationModel.updateUserInput.phoneNumber =
              _phoneNumberController.value.text;
          //TODO: Add country code
          context.push(Routes.signupGender.path);
        }
      },
    );
  }
}
