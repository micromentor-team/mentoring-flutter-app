import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../../constants/app_constants.dart';

class SignUpGender extends StatefulWidget {
  const SignUpGender({super.key});

  @override
  State<SignUpGender> createState() => _SignUpGenderState();
}

class _SignUpGenderState extends State<SignUpGender> {
  final _formKey = GlobalKey<FormState>();
  String? _gender;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupGenderTitle,
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              l10n.signupGenderSubtitle,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Insets.paddingLarge),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    l10n.signupGenderOptionWoman,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  trailing: Radio<String>(
                    value: l10n
                        .signupGenderOptionWoman, //TODO - use content provider textID
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: Insets.paddingLarge),
                ListTile(
                  title: Text(
                    l10n.signupGenderOptionMan,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  trailing: Radio<String>(
                    value: l10n
                        .signupGenderOptionMan, //TODO - use content provider textID
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: Insets.paddingLarge),
                ListTile(
                  title: Text(
                    l10n.signupGenderOptionOther,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  trailing: Radio<String>(
                    value: l10n
                        .signupGenderOptionOther, //TODO - use content provider textID
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      footer: SignUpIconFooter(
          icon: Icons.lock_outline, text: l10n.signUpHiddenInfoDesc),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _gender == null
            ? null
            : () {
                if (_formKey.currentState!.validate()) {
                  context.push(Routes.signupLocation.path);
                }
              },
      ),
    );
  }
}
