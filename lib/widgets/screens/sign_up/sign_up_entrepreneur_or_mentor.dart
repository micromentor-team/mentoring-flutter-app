import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../molecules/login_radio_button_cards.dart';
import 'sign_up_bottom_buttons.dart';

class SignUpEntrepreneurOrMentorScreen extends StatefulWidget {
  const SignUpEntrepreneurOrMentorScreen({Key? key}) : super(key: key);

  @override
  State<SignUpEntrepreneurOrMentorScreen> createState() =>
      _SignUpEntrepreneurOrMentorScreenState();
}

class _SignUpEntrepreneurOrMentorScreenState
    extends State<SignUpEntrepreneurOrMentorScreen> {
  int? selectedNumber;

  void handleRadioButtonChange(int value) {
    setState(() {
      selectedNumber = value;
      print(selectedNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final LoginRadioButtons = LoginRadioButtonCards(
      title: [l10n.iAmAnEntrepreneur, l10n.iAmAMentor],
      subtitle: [l10n.entrepreneurDescription, l10n.mentorDescription],
      imageAssetName: const [
        Image(image: AssetImage(Assets.entrepreneurIcon)),
        Image(image: AssetImage(Assets.mentorIcon))
      ],
      titleIcon: const [null, null],
      rebuildParentWidget: handleRadioButtonChange,
    );
    int selectedNumber = LoginRadioButtons.selectedNumber;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.roleMicroMentor,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupBusinessStage.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          LoginRadioButtons,
          const SizedBox(height: Insets.paddingMedium),
          Padding(
            padding: const EdgeInsets.all(Insets.paddingSmall),
            child: InkWell(
              child: Text(l10n.learnMoreAboutMentoring,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    decoration: TextDecoration.underline,
                  )),
              onTap: () {},
            ),
          ),
          Text("Selected number is: $selectedNumber")
        ],
      ),
    );
  }
}
