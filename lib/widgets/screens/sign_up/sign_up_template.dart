import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

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
  final Widget body;
  final Widget? footer;
  final Widget? bottomButtons;

  const SignUpTemplate(
      {super.key,
      required this.progress,
      required this.title,
      required this.body,
      this.footer,
      this.bottomButtons});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingExtraLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              LinearProgressIndicator(value: _signUpProgressToDouble(progress)),
              const SizedBox(height: Insets.paddingMedium),
              Text(
                title,
                softWrap: true,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: Insets.paddingMedium),
              body,
              const Spacer(),
              if (footer != null) SizedBox(width: 240, child: footer),
              if (bottomButtons != null) bottomButtons!,
            ],
          ),
        ),
      ),
    );
  }
}
