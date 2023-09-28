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

class SignUpTemplate extends StatefulWidget {
  final SignUpProgress progress;
  final String title;
  final Widget body;
  final Widget? footer;
  final Widget? bottomButtons;

  const SignUpTemplate({
    super.key,
    required this.progress,
    required this.title,
    required this.body,
    this.footer,
    this.bottomButtons,
  });

  @override
  State<SignUpTemplate> createState() => _SignUpTemplateState();
}

class _SignUpTemplateState extends State<SignUpTemplate> {
  @override
  void initState() {
    super.initState();
    // Close keyboard from previous page
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Insets.paddingExtraLarge),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                    value: _signUpProgressToDouble(widget.progress)),
                const SizedBox(height: Insets.paddingMedium),
                Text(
                  widget.title,
                  softWrap: true,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Insets.paddingMedium),
                Expanded(
                  child: SingleChildScrollView(
                    child: widget.body,
                  ),
                ),
                if (widget.footer != null)
                  SizedBox(width: 240, child: widget.footer),
                if (widget.bottomButtons != null) widget.bottomButtons!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
