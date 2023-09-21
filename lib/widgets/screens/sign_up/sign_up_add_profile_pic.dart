import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../../constants/app_constants.dart';
import '../../molecules/login_radio_button_cards.dart';
import 'sign_up_bottom_buttons.dart';

class SignupAddProfilePicScreen extends StatefulWidget {
  const SignupAddProfilePicScreen({Key? key}) : super(key: key);

  @override
  State<SignupAddProfilePicScreen> createState() =>
      _SignupAddProfilePicScreenState();
}

class _SignupAddProfilePicScreenState extends State<SignupAddProfilePicScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: "Add a profile photo",
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {}),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: const Column(
        children: [
          Text("Continue adding more info."),
        ],
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
