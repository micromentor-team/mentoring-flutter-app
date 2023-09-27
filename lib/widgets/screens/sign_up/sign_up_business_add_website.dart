import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../../constants/app_constants.dart';
import '../../atoms/text_form_field_widget.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessAddWebsiteScreen extends StatefulWidget {
  const SignupBusinessAddWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessAddWebsiteScreen> createState() =>
      _SignupBusinessAddWebsiteScreenState();
}

class _SignupBusinessAddWebsiteScreenState
    extends State<SignupBusinessAddWebsiteScreen> {
  String? _website;
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.signupBusinessWebsiteTitle,
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _website?.isNotEmpty ?? false
            ? () {
                context.push(Routes.startupRationale.path);
              }
            : null,
      ),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.signupBusinessWebsiteInputLabel,
          hint: l10n.signupBusinessWebsiteInputHint,
          onChanged: (value) {
            setState(() {
              _website = value;
            });
          },
        ),
      ),
    );
  }
}
