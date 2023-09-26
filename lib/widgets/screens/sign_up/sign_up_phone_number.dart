import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../atoms/text_form_field_widget.dart';

List<String> _countryCode = ["US +1", "CA +1"];

class SignUpPhoneNumber extends StatefulWidget {
  const SignUpPhoneNumber({super.key});

  @override
  State<SignUpPhoneNumber> createState() => _SignUpPhoneNumberState();
}

class _SignUpPhoneNumberState extends State<SignUpPhoneNumber> {
  TextEditingController? emailTextController;
  final _formKey = GlobalKey<FormState>();
  String? phoneNumber;
  String? selectedCountryCode = _countryCode[0];

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.whatIsYourPhoneNumber,
        body: Form(
            key: _formKey,
            child: Row(children: [
              SizedBox(
                  width: 100,
                  child: DropdownButtonFormField(
                    isExpanded: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: theme.colorScheme.outline, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: theme.colorScheme.outline, width: 1),
                      ),
                      filled: true,
                      fillColor: theme.colorScheme.surface,
                    ),
                    dropdownColor: theme.colorScheme.surface,
                    value: selectedCountryCode,
                    onChanged: (country) => setState(() {
                      selectedCountryCode = country;
                    }),
                    items: _countryCode
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.colorScheme.outline),
                        ),
                      );
                    }).toList(),
                  )),
              const SizedBox(
                width: Insets.paddingExtraSmall,
              ),
              Expanded(
                  child: TextFormFieldWidget(
                keyboardType: TextInputType.phone,
                textController: emailTextController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                label: l10n.phoneNumber,
                onPressed: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
              ))
            ])),
        footer: SignUpIconFooter(
            icon: Icons.lock_outline, text: l10n.signUpHiddenInfoDesc),
        bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            if (_formKey.currentState!.validate()) {
              context.push(Routes.signupEntrepreneurOrMentor.path);
            }
          },
        ));
  }
}
