import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:mm_flutter_app/widgets/shared/text_form_field_widget.dart';
import 'package:provider/provider.dart';

class SignupVerificationScreen extends StatefulWidget {
  const SignupVerificationScreen({super.key});

  @override
  State<SignupVerificationScreen> createState() =>
      _SignupVerificationScreenState();
}

class _SignupVerificationScreenState extends State<SignupVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final UserProvider _userProvider;
  late final UserRegistrationModel _registrationModel;
  bool processing = false;
  String? _fourDigitCode;

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
      title: l10n.signupVerificationTitle,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              l10n.signupVerificationSubtitle1,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            Text(
              l10n.signupVerificationSubtitle2,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            TextFormFieldWidget(
              maxLength: 4,
              label: l10n.signupVerificationInputLabel,
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
              l10n.signupVerificationResendEmailPrompt,
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
                l10n.signupVerificationResendEmailLabel,
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
                child: Text(
                  l10n.signupVerificationChangeEmailPrompt,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  router.push(Routes.signupEmail.path);
                },
              ),
            ),
          ],
        ),
      ),
      bottomButtons: processing
          ? const CircularProgressIndicator(
              strokeWidth: 4.0,
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Dimensions.bigButtonSize,
                backgroundColor: theme.colorScheme.primary,
                textStyle: theme.textTheme.labelLarge,
              ),
              onPressed: !processing && _fourDigitCode?.length == 4
                  ? () async {
                      setState(() {
                        processing = true;
                      });
                      if (await _registrationModel
                          .registerUser(_userProvider)) {
                        router.push(Routes.signupWelcome.path);
                      }
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        setState(() => processing = false);
                      });
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
                    l10n.actionSubmit,
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
