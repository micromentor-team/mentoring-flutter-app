import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../../../shared/autocomplete_picker.dart';
import '../components/sign_up_template.dart';

class SignupLanguageScreen extends StatefulWidget {
  const SignupLanguageScreen({super.key});

  @override
  State<SignupLanguageScreen> createState() => _SignupLanguageScreenState();
}

class _SignupLanguageScreenState extends State<SignupLanguageScreen> {
  final _preferredLanguagesController = TextfieldTagsController();
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  bool _selectedPreferredLanguage = false;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _preferredLanguagesController.addListener(() {
      setState(() {
        _selectedPreferredLanguage = _preferredLanguagesController.hasTags;
      });
    });
  }

  @override
  void dispose() {
    try {
      _preferredLanguagesController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupLanguageTitle,
      subtitle: l10n.signupLanguageSubtitle,
      body: Column(
        children: [
          AutocompletePicker(
            singleSelect: true,
            label: l10n.signupLanguageInputLabel,
            hint: l10n.signupLanguageInputHint,
            controller: _preferredLanguagesController,
            options: _contentProvider.languageOptions!
                .map((e) => e.translatedValue!)
                .toList(),
          ),
        ],
      ),
      isNextEnabled: _selectedPreferredLanguage,
      onNextPressed: () {
        _registrationModel.updateUserInput.preferredLanguageTextId =
            _preferredLanguagesController.getTags
                ?.map((t) => _contentProvider.languageOptions!
                    .firstWhere((o) => o.translatedValue! == t)
                    .textId)
                .toList()
                .firstOrNull;
        context.push(Routes.signupGroupMembership.path);
      },
    );
  }
}
