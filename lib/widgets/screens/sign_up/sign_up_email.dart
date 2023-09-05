import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/sign_up_bottom_buttons.dart';

import '../../atoms/social_sign_in_button.dart';
import '../../atoms/text_form_field_widget.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  TextEditingController? emailTextController;
  String? email;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(Insets.paddingExtraLarge),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const LinearProgressIndicator(value: 0.25),
                      const SizedBox(height: Insets.paddingMedium),
                      Text(
                        l10n.whatIsYourEmailAddress,
                        softWrap: true,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: Insets.paddingMedium),
                      TextFormFieldWidget(
                          textController: emailTextController,
                          label: l10n.emailAddress,
                          onPressed: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          obscureText: false),
                      const Spacer(),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Insets.paddingExtraLarge * 2),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.lock_outline,
                                  color: theme.colorScheme.outline),
                              Expanded(
                                  // fit: BoxFit.contain,
                                  child: Text(l10n.signUpHiddenInfoDesc,
                                      softWrap: true,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                              color:
                                                  theme.colorScheme.outline))),
                            ],
                          )),
                      const SignUpBottomButtons(),
                    ]))));
  }
}
