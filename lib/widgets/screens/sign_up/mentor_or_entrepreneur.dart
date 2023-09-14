import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../molecules/login_radio_button_cards.dart';
import '../../molecules/upload_photo_button.dart';
import 'sign_up_bottom_buttons.dart';

class MentorOrEntrepreneurScreen extends StatefulWidget {
  const MentorOrEntrepreneurScreen({Key? key}) : super(key: key);

  @override
  State<MentorOrEntrepreneurScreen> createState() =>
      _MentorOrEntrepreneurScreenState();
}

class _MentorOrEntrepreneurScreenState
    extends State<MentorOrEntrepreneurScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.roleMicroMentor,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {}),
      footer: SignUpIconFooter(
          icon: Icons.lock_outline, text: l10n.signUpHiddenInfoDesc),
      body: Column(
        children: [
          // createEntrepreneurMentorCards(context),
          UploadPhotoButton(),
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
        ],
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
