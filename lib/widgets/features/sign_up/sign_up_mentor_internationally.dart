import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';
import 'components/sign_up_bottom_buttons.dart';

class SignupMentorInternationallyScreen extends StatefulWidget {
  const SignupMentorInternationallyScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorInternationallyScreen> createState() =>
      _SignupMentorInternationallyScreenState();
}

class _SignupMentorInternationallyScreenState
    extends State<SignupMentorInternationallyScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _selection;
  bool? _mentorInternationally;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: l10n.signupMentoringInternationallyTitle,
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.actionPrevious,
        rightButtonText: l10n.actionNext,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _mentorInternationally != null
            ? () {
                _registrationModel.updateUserInput.mentorInternationally =
                    _mentorInternationally;
                context.push(Routes.signupCompleted.path);
              }
            : null,
      ),
      footer: SignUpIconFooter(
          icon: Icons.lock_outline, text: l10n.signupFooterHidden),
      body: Column(
        children: [
          Text(
            l10n.signupMentoringInternationallySubtitle,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Insets.paddingLarge),
          Column(
            children: [
              ListTile(
                title: Text(
                  l10n.signupMentoringInternationallyPositive,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                trailing: Radio<String>(
                  value: l10n.signupMentoringInternationallyPositive,
                  groupValue: _selection,
                  onChanged: (String? value) {
                    setState(() {
                      _selection = value;
                      _mentorInternationally = true;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  l10n.signupMentoringInternationallyNegative,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                trailing: Radio<String>(
                  value: l10n.signupMentoringInternationallyNegative,
                  groupValue: _selection,
                  onChanged: (String? value) {
                    setState(() {
                      _selection = value;
                      _mentorInternationally = false;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
