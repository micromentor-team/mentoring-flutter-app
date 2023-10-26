import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../components/sign_up_template.dart';

class SignupGenderScreen extends StatefulWidget {
  const SignupGenderScreen({super.key});

  @override
  State<SignupGenderScreen> createState() => _SignupGenderScreenState();
}

class _SignupGenderScreenState extends State<SignupGenderScreen> {
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
      subtitle: l10n.signupGenderSubtitle,
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
      isNextEnabled: _genderTextId != null,
      onNextPressed: () {
        if (_formKey.currentState!.validate()) {
          _registrationModel.updateUserInput.genderTextId = _genderTextId;
          context.push(Routes.signupBirthYear.path);
        }
      },
    );
  }
}
