import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../../constants/app_constants.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessCompletedScreen extends StatefulWidget {
  const SignupBusinessCompletedScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessCompletedScreen> createState() =>
      _SignupBusinessCompletedScreenState();
}

class _SignupBusinessCompletedScreenState
    extends State<SignupBusinessCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.four,
      title: l10n.amazing,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.findMentors,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.completedEntrepreneurSignup.path);
          }),
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
            l10n.signUpCompletedTextOne,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Text(
            l10n.signUpCompletedTextTwo,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
