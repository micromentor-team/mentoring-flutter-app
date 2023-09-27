import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../molecules/checkbox_list_and_form.dart';
import 'sign_up_bottom_buttons.dart';

class SignupMentorPronounsScreen extends StatefulWidget {
  const SignupMentorPronounsScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorPronounsScreen> createState() =>
      _SignupMentorPronounsScreenState();
}

class _SignupMentorPronounsScreenState
    extends State<SignupMentorPronounsScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.whatAreYourPronouns,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMentorRole.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          Text(
            l10n.pronounsDescription,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
          const PronounExample(),
        ],
      ),
    );
  }
}
