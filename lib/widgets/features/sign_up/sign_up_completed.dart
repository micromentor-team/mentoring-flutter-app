import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';
import 'components/sign_up_bottom_buttons.dart';

class SignupCompletedScreen extends StatefulWidget {
  const SignupCompletedScreen({Key? key}) : super(key: key);

  @override
  State<SignupCompletedScreen> createState() => _SignupCompletedScreenState();
}

class _SignupCompletedScreenState extends State<SignupCompletedScreen> {
  late final UserProvider _userProvider;
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;
  bool _processing = false;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
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
    final GoRouter router = GoRouter.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.four,
      title: l10n.signupCompletedTitle,
      bottomButtons: _processing
          ? const CircularProgressIndicator(
              strokeWidth: 4,
            )
          : SignUpBottomButtons(
              leftButtonText: l10n.previous,
              rightButtonText: _isEntrepreneur
                  ? l10n.signupCompletedEntrepreneurAction
                  : l10n.signupCompletedMentorAction,
              leftOnPress: () {
                context.pop();
              },
              rightOnPress: () async {
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
            ),
      body: Column(
        children: [
          SizedBox(
            height: 240,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.onSurface,
                  BlendMode.srcATop,
                ),
                child: const Image(
                  image: AssetImage(Assets.signUpCompletedScreenStockImage),
                )),
          ),
          const SizedBox(
            height: Insets.paddingMedium,
          ),
          Text(
            l10n.signupCompletedGeneralSubtitle,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Text(
            _isEntrepreneur
                ? l10n.signupCompletedEntrepreneurSubtitle
                : l10n.signupCompletedMentorSubtitle,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
