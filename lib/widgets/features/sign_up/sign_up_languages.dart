import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:mm_flutter_app/widgets/shared/autocomplete_picker.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../providers/models/user_registration_model.dart';

class SignupLanguagesScreen extends StatefulWidget {
  const SignupLanguagesScreen({super.key});

  @override
  State<SignupLanguagesScreen> createState() => _SignupLanguagesScreenState();
}

class _SignupLanguagesScreenState extends State<SignupLanguagesScreen> {
  final _preferredLanguagesController = TextfieldTagsController();
  final _fluentLanguagesController = TextfieldTagsController();
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
      _fluentLanguagesController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupLanguagesTitle,
      body: Column(
        children: [
          const SizedBox(height: Insets.paddingMedium),
          Text(
            l10n.signupLanguagesPreferred,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Insets.paddingMedium),
          AutocompletePicker(
            controller: _preferredLanguagesController,
            options: _contentProvider.languageOptions!
                .map((e) => e.translatedValue!)
                .toList(),
          ),
          const SizedBox(height: Insets.paddingMedium),
          Text(
            l10n.signupLanguagesFluent,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Insets.paddingMedium),
          AutocompletePicker(
            controller: _fluentLanguagesController,
            options: _contentProvider.languageOptions!
                .map((e) => e.translatedValue!)
                .toList(),
          ),
        ],
      ),
      footer: SignUpIconFooter(
        icon: Icons.visibility_outlined,
        text: l10n.signUpVisibleInfoDesc,
      ),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _selectedPreferredLanguage
            ? () {
                _registrationModel.updateUserInput.preferredLanguageTextIds =
                    _preferredLanguagesController.getTags
                        ?.map((t) => _contentProvider.languageOptions!
                            .firstWhere((o) => o.translatedValue! == t)
                            .textId)
                        .toList();
                _registrationModel.updateUserInput.spokenLanguagesTextIds =
                    _fluentLanguagesController.getTags
                        ?.map((t) => _contentProvider.languageOptions!
                            .firstWhere((o) => o.translatedValue! == t)
                            .textId)
                        .toList();
                context.push(Routes.signupUserType.path);
              }
            : null,
      ),
    );
  }
}
