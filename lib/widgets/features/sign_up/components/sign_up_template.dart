import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/constants.dart';
import '../../../../utilities/utility.dart';
import 'sign_up_bottom_buttons.dart';

enum SignUpProgress { one, two, three, four }

double _signUpProgressToDouble(SignUpProgress signUpProgress) {
  switch (signUpProgress) {
    case SignUpProgress.one:
      return 0.25;
    case SignUpProgress.two:
      return 0.5;
    case SignUpProgress.three:
      return 0.75;
    default:
      return 1.0;
  }
}

class SignUpTemplate extends StatelessWidget {
  final SignUpProgress progress;
  final String title;
  final String? subtitle;
  final Widget body;
  final bool showNavigationButtons;
  final bool isNextEnabled;
  final VoidCallback? onNextPressed;
  final AsyncState processingState;

  static const double navigationBarHeight = 88.0;

  const SignUpTemplate({
    super.key,
    required this.progress,
    required this.title,
    this.subtitle,
    required this.body,
    this.showNavigationButtons = true,
    this.isNextEnabled = true,
    this.onNextPressed,
    this.processingState = AsyncState.ready,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: navigationBarHeight,
              child: SingleChildScrollView(
                clipBehavior: Clip.none,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingExtraLarge),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: Insets.paddingLarge),
                      LinearProgressIndicator(
                        value: _signUpProgressToDouble(progress),
                      ),
                      const SizedBox(height: Insets.paddingMedium),
                      Text(
                        title,
                        softWrap: true,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: Insets.paddingLarge),
                      if (subtitle != null) ...[
                        Text(
                          subtitle!,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: Insets.paddingMedium),
                      ],
                      body,
                    ],
                  ),
                ),
              ),
            ),
            if (showNavigationButtons)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: navigationBarHeight,
                  color: theme.colorScheme.primaryContainer,
                  child: Center(
                    child: AppUtility.widgetForAsyncState(
                      state: processingState,
                      onReady: () => SignUpBottomButtons(
                        leftButtonText: l10n.actionPrevious,
                        rightButtonText: l10n.actionNext,
                        leftOnPress: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          context.pop();
                        },
                        rightOnPress: isNextEnabled ? onNextPressed : null,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
