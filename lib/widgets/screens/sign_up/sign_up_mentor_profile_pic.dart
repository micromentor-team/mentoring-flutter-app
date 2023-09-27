import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'sign_up_bottom_buttons.dart';

class SignupMentorProfilePicScreen extends StatefulWidget {
  const SignupMentorProfilePicScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorProfilePicScreen> createState() =>
      _SignupMentorProfilePicScreenState();
}

class _SignupMentorProfilePicScreenState
    extends State<SignupMentorProfilePicScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.addProfilePicPrompt,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMentorPronouns.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: const Placeholder(),
    );
  }
}
