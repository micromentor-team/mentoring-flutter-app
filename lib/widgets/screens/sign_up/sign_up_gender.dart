import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/user_registration_model.dart';

class SignUpGender extends StatefulWidget {
  const SignUpGender({super.key});

  @override
  State<SignUpGender> createState() => _SignUpGenderState();
}

class _SignUpGenderState extends State<SignUpGender> {
  final _formKey = GlobalKey<FormState>();
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  String? _genderValue;
  String? _genderTextId;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  Widget _createGenderOption(ThemeData theme, String value, String textId) {
    return ListTile(
      title: Text(
        value,
        style: theme.textTheme.bodyMedium!.copyWith(
          color: theme.colorScheme.secondary,
        ),
      ),
      trailing: Radio<String>(
        value: value,
        groupValue: _genderValue,
        onChanged: (String? value) {
          setState(() {
            _genderValue = value;
            _genderTextId = textId;
          });
        },
      ),
    );
  }

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
            for (int i = 0;
                i < _contentProvider.presetGenderOptions!.length;
                i++)
              Padding(
                padding: i == 0
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(
                        top: Insets.paddingLarge,
                      ),
                child: _createGenderOption(
                  theme,
                  _contentProvider.presetGenderOptions![i].translatedValue!,
                  _contentProvider.presetGenderOptions![i].textId,
                ),
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
        rightOnPress: _genderTextId == null
            ? null
            : () {
                if (_formKey.currentState!.validate()) {
                  _registrationModel.updateUserInput.genderTextId =
                      _genderTextId;
                  context.push(Routes.signupLocation.path);
                }
              },
      ),
    );
  }
}
