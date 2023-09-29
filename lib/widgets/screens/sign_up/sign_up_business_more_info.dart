import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessMoreInfoScreen extends StatefulWidget {
  const SignupBusinessMoreInfoScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessMoreInfoScreen> createState() =>
      _SignupBusinessMoreInfoScreenState();
}

class _SignupBusinessMoreInfoScreenState
    extends State<SignupBusinessMoreInfoScreen> {
  late final UserProvider _userProvider;
  late final UserRegistrationModel _registrationModel;
  bool _processing = false;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.needLittleMoreInfo,
      bottomButtons: _processing
          ? const CircularProgressIndicator(
              strokeWidth: 4,
            )
          : SignUpBottomButtons(
              leftButtonText: l10n.findMentors,
              rightButtonText: l10n.continueButton,
              leftOnPress: () async {
                setState(() => _processing = true);
                if (await _registrationModel.updateUser(_userProvider)) {
                  router.pushNamed(
                    Routes.root.name,
                    queryParameters: {
                      RouteParams.nextRouteName: Routes.explore.name
                    },
                  );
                } else {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => setState(() => _processing = false),
                  );
                }
              },
              rightOnPress: () {
                context.push(Routes.addProfilePicture.path);
              }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingMedium),
            child: Text(
              l10n.moreInfoPrompt,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.paddingMedium),
            child: Text(
              l10n.readyToBrowseMentorsPrompt,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
