import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../atoms/text_form_field_widget.dart';

class SignUpName extends StatefulWidget {
  const SignUpName({super.key});

  @override
  State<SignUpName> createState() => _SignUpNameState();
}

class _SignUpNameState extends State<SignUpName> {
  TextEditingController? emailTextController;
  final _formKey = GlobalKey<FormState>();
  String? lastName;
  String? firstName;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.whatIsYourName,
        body: Form(
            key: _formKey,
            child: Column(children: [
              TextFormFieldWidget(
                textController: emailTextController,
                label: l10n.lastName,
                maxLength: 50,
                onPressed: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
              ),
              const SizedBox(
                height: Insets.paddingSmall,
              ),
              TextFormFieldWidget(
                textController: emailTextController,
                label: l10n.firstName,
                maxLength: 50,
                onPressed: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
              )
            ])),
        footer: SignUpIconFooter(
            icon: Icons.visibility_outlined, text: l10n.signUpVisibleInfoDesc),
        bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            if (_formKey.currentState!.validate()) {
              context.push(Routes.signupPhoneNumber.path);
            }
          },
        ));
  }
}
