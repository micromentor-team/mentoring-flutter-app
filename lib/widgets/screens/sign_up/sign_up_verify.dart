import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

class SignUpVerify extends StatefulWidget {
  const SignUpVerify({super.key});

  @override
  State<SignUpVerify> createState() => _SignUpVerifyState();
}

class _SignUpVerifyState extends State<SignUpVerify> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _fourDigitCode;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.verifyYourAccount,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              l10n.verifyAccountLine1,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            Text(
              l10n.verifyAccountLine2,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            TextFormFieldWidget(
              maxLength: 4,
              label: l10n.enterCode,
              onChanged: (value) {
                setState(() {
                  _fourDigitCode = value;
                });
              },
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            Text(
              l10n.didntReceiveEmail,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Insets.paddingMedium,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Dimensions.bigButtonSize,
                backgroundColor: theme.colorScheme.surface,
                textStyle: theme.textTheme.labelLarge,
                side: BorderSide(color: theme.colorScheme.outline, width: 1),
              ),
              onPressed: () {},
              child: Text(
                l10n.resendEmail,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(
              height: Insets.paddingMedium,
            ),
            Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: InkWell(
                  child: Text(l10n.tryAnotherEmail,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    context.push(Routes.signupEmail.path);
                  },
                )),
          ],
        ),
      ),
      bottomButtons: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Dimensions.bigButtonSize,
          backgroundColor: theme.colorScheme.primary,
          textStyle: theme.textTheme.labelLarge,
        ),
        onPressed: _fourDigitCode?.length == 4
            ? () {
                context.push(Routes.signupWelcome.path);
              }
            : null,
        child: Wrap(
          children: [
            Icon(
              Icons.check,
              color: theme.colorScheme.onPrimary,
              size: 20,
            ),
            const SizedBox(width: Insets.paddingExtraSmall),
            Text(
              l10n.submit,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
