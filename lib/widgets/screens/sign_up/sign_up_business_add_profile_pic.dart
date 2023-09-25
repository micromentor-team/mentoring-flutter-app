import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/molecules/upload_photo_button.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../../constants/app_constants.dart';
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
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.addProfilePicPrompt,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.addPronouns.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.paddingMedium),
            child: Text(
              l10n.whyAddProfilePic,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
          const UploadPhotoButton(),
        ],
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
