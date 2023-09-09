import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../atoms/text_form_field_widget.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  TextEditingController? emailTextController;
  final _formKey = GlobalKey<FormState>();
  String? email;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.whatIsYourEmailAddress,
        body: Form(
            key: _formKey,
            child: TextFormFieldWidget(
              textController: emailTextController,
              label: l10n.emailAddress,
              onPressed: (value) {
                setState(() {
                  email = value;
                });
              },
              obscureText: false,
              validator: (value) {
                bool validEmail = EmailValidator.validate(value!);
                if (validEmail != true) {
                  return l10n.invalidEmailSnackBar;
                }
                return null;
              },
            )),
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
              context.push(Routes.entrepreneurOrMentor.path);
            }
          },
        ));
  }
}
