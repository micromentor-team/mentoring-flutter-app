import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../molecules/multi_select_chips.dart';
import 'sign_up_bottom_buttons.dart';

class SignupMentorIndustryScreen extends StatefulWidget {
  const SignupMentorIndustryScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorIndustryScreen> createState() =>
      _SignupMentorIndustryScreenState();
}

class _SignupMentorIndustryScreenState
    extends State<SignupMentorIndustryScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: l10n.experienceInIndustries,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMentorPreferences.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          createMultiSelectChipsExampleWithIcon(),
        ],
      ),
    );
  }
}
