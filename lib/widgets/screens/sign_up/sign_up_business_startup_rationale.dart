import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../../constants/app_constants.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessStartupRationaleScreen extends StatefulWidget {
  const SignupBusinessStartupRationaleScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessStartupRationaleScreen> createState() =>
      _SignupBusinessStartupRationaleScreenState();
}

class _SignupBusinessStartupRationaleScreenState
    extends State<SignupBusinessStartupRationaleScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.whatDidYouStartYourBusiness,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.industry.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: const Placeholder(),
    );
  }
}
