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
  String? dummyFourDigitCode = '1234';
  final _verficationCodeController = TextEditingController();
  bool verificationFailed = false;

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
              textController: _verficationCodeController,
              maxLength: 4,
              label: l10n.enterCode,
              onChanged: (value) {
                setState(() {
                  _fourDigitCode = value;
                });
              },
              validator: (value) {
                if (_fourDigitCode != dummyFourDigitCode) {
                  setState(() {
                    verificationFailed = true;
                  });
                  return '';
                }
                return null;
              },
            ),
            if (verificationFailed)
              SizedBox(
                child: Text(
                  l10n.verificationFailed,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.error, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
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
                      if (_formKey.currentState!.validate()) {
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
