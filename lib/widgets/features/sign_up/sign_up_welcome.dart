import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';

class SignupWelcomeScreen extends StatefulWidget {
  const SignupWelcomeScreen({super.key});

  @override
  State<SignupWelcomeScreen> createState() => _SignupWelcomeScreenState();
}

class _SignupWelcomeScreenState extends State<SignupWelcomeScreen> {
  late final UserProvider _userProvider;
  late final UserRegistrationModel _registrationModel;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    _registrationModel.updateUserInput.id = _userProvider.user!.id;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupWelcomeTitle,
      body: Column(
        children: [
          Text(
            l10n.signupWelcomeSubtitle,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          SizedBox(
            height: 240,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                theme.colorScheme.onSurface,
                BlendMode.srcATop,
              ),
              child: const Image(
                image: AssetImage(Assets.signUpWelcomeScreenStockImage),
              ),
            ),
          ),
        ],
      ),
      onNextPressed: () => context.push(Routes.signupPermissions.path),
    );
  }
}
