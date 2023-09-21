import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/multi_select_chips.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessHelpSelectionScreen extends StatefulWidget {
  const SignupBusinessHelpSelectionScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessHelpSelectionScreen> createState() =>
      _SignupBusinessHelpSelectionScreenState();
}

class _SignupBusinessHelpSelectionScreenState
    extends State<SignupBusinessHelpSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.lookingForHelp,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMoreInfo.path);
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

enum UserRole { mentor, entrepreneur }
