import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Center(
                child: SizedBox(
              height: Insets.paddingLarge,
            )),
            Text(
              l10n.letsGetStarted,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: Insets.paddingMedium,
            ),
            Text(
              l10n.startScreenPrompt,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            SizedBox(
              height: 240,
              child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface,
                    BlendMode.srcATop,
                  ),
                  child: const Image(
                    image: AssetImage(Assets.startScreenStockImage),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: SizedBox(
                    width: 320,
                    child: Text(
                      l10n.micromentorDesc,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ))),
            const SizedBox(height: Insets.paddingMedium),
            Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: ElevatedButton(
                    style: ButtonStyles.primaryRoundedRectangleButton(context),
                    onPressed: () {
                      context.push(Routes.signupEntrepreneurOrMentor.path);
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 4.0),
                        child: Text(
                          l10n.getStarted,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        )))),
            Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: InkWell(
                  child: Text(l10n.haveAnAccount,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    context.push(Routes.signin.path);
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: InkWell(
                  child: Text(l10n.changeYourLanguage,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    context.push(Routes.selectLanguage.path);
                  },
                )),
          ]),
    )));
  }
}
