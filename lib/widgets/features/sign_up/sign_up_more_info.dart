import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';

class SignupMoreInfoScreen extends StatefulWidget {
  const SignupMoreInfoScreen({Key? key}) : super(key: key);

  @override
  State<SignupMoreInfoScreen> createState() => _SignupMoreInfoScreenState();
}

class _SignupMoreInfoScreenState extends State<SignupMoreInfoScreen> {
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
      progress: SignUpProgress.one,
      title: l10n.signupMoreInfoTitle,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingMedium),
            child: Text(
              l10n.signupMoreInfoSubtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingMedium),
            child: Text(
              _isEntrepreneur
                  ? l10n.signupMoreInfoEntrepreneurPrompt
                  : l10n.signupMoreInfoMentorPrompt,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
      onNextPressed: () => context.push(Routes.signupProfilePhoto.path),
    );
  }
}
