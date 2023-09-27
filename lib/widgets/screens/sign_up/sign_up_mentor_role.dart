import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../atoms/text_form_field_widget.dart';
import 'sign_up_bottom_buttons.dart';

class SignupMentorRoleScreen extends StatefulWidget {
  const SignupMentorRoleScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorRoleScreen> createState() => _SignupMentorRoleScreenState();
}

class _SignupMentorRoleScreenState extends State<SignupMentorRoleScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.currentRole,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMentorIndustry.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          Form(
              child: TextFormFieldWidget(
            label: l10n.title,
            onChanged: (value) {},
            textController: null,
          )),
          const SizedBox(
            height: Insets.paddingMedium,
          ),
          Form(
              child: TextFormFieldWidget(
            label: l10n.companyOrOrganizationName,
            onChanged: (value) {},
            textController: null,
          )),
        ],
      ),
    );
  }
}
