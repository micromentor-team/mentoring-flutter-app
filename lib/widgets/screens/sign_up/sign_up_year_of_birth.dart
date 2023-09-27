import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../atoms/text_form_field_widget.dart';

class SignUpYearOfBirth extends StatefulWidget {
  const SignUpYearOfBirth({super.key});

  @override
  State<SignUpYearOfBirth> createState() => _SignUpYearOfBirthState();
}

class _SignUpYearOfBirthState extends State<SignUpYearOfBirth> {
  TextEditingController? yearTextController;
  final _formKey = GlobalKey<FormState>();
  String? year;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.whatYearWereYouBorn,
        body: Form(
            key: _formKey,
            child: Stack(children: [
              TextFormFieldWidget(
                textController: yearTextController,
                label: l10n.yearOfBirth,
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
                    year = value;
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
          rightOnPress: () {
            if (_formKey.currentState!.validate()) {
              context.push(Routes.signupGender.path);
            }
          },
        ));
  }
}
