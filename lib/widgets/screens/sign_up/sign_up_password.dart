import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.createAPassword,
        body: Form(
            key: _formKey,
            child: Column(children: [
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
                label: l10n.password,
                onPressed: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              const SizedBox(
                height: Insets.paddingSmall,
              ),
              TextFormFieldWidget(
                  isPassword: true,
                  textController: _confirmPass,
                  label: l10n.confirmPassword,
                  onPressed: (value) {
                    setState(() {
                      confirmPassword = value;
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
                  }),
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
              context.push(Routes.entrepreneurOrMentor.path);
            }
          },
        ));
  }
}
