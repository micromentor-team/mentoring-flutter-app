import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/molecules/upload_photo_button.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import 'components/sign_up_bottom_buttons.dart';

class SignupProfilePhotoScreen extends StatefulWidget {
  const SignupProfilePhotoScreen({Key? key}) : super(key: key);

  @override
  State<SignupProfilePhotoScreen> createState() =>
      _SignupProfilePhotoScreenState();
}

class _SignupProfilePhotoScreenState extends State<SignupProfilePhotoScreen> {
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _isEntrepreneur =
        _registrationModel.updateUserInput.userType == UserType.entrepreneur;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.signupPhotoTitle,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupPronouns.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.paddingMedium),
            child: Text(
              _isEntrepreneur
                  ? l10n.signupPhotoEntrepreneurSubtitle
                  : l10n.signupPhotoMentorSubtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const UploadPhotoButton(),
        ],
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
