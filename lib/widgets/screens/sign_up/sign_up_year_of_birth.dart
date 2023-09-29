import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';
import '../../atoms/text_form_field_widget.dart';

class SignUpYearOfBirth extends StatefulWidget {
  const SignUpYearOfBirth({super.key});

  @override
  State<SignUpYearOfBirth> createState() => _SignUpYearOfBirthState();
}

class _SignUpYearOfBirthState extends State<SignUpYearOfBirth> {
  final _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  String? _year;

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
      progress: SignUpProgress.one,
      title: l10n.signupBirthTitle,
      body: Form(
          key: _formKey,
          child: Stack(children: [
            TextFormFieldWidget(
              label: l10n.signupBirthInputLabel,
              hint: l10n.signupBirthInputHint,
              keyboardType: TextInputType.phone,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              suffixIcon: IconButton(
                icon: const Icon(Icons.today),
                onPressed: () {},
              ),
              onChanged: (value) {
                setState(() {
                  _year = value;
                });
              },
            ),
          ])),
      footer: SignUpIconFooter(
          icon: Icons.lock_outline, text: l10n.signUpHiddenInfoDesc),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _year?.isNotEmpty ?? false
            ? () {
                if (_formKey.currentState!.validate()) {
                  _registrationModel.updateUserInput.birthYear =
                      int.parse(_year!);
                  context.push(Routes.signupGender.path);
                }
              }
            : null,
      ),
    );
  }
}
