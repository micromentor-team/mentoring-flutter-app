import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/content_provider.dart';
import '../../../providers/models/user_registration_model.dart';
import 'components/checkbox_list_and_form.dart';

class SignupPronounsScreen extends StatefulWidget {
  const SignupPronounsScreen({Key? key}) : super(key: key);

  @override
  State<SignupPronounsScreen> createState() => _SignupPronounsScreenState();
}

class _SignupPronounsScreenState extends State<SignupPronounsScreen> {
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final bool _isEntrepreneur;
  final List<String> _selections = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _isEntrepreneur =
        _registrationModel.updateUserInput.userType == UserType.entrepreneur;
  }

  List<LabeledCheckbox> _createCheckboxes() {
    return _contentProvider.presetPronounOptions!
        .map(
          (e) => _createLabeledCheckbox(e.translatedValue!, e.textId),
        )
        .toList();
  }

  LabeledCheckbox _createLabeledCheckbox(String label, String textId) {
    return LabeledCheckbox(
      label: label,
      id: textId,
      value: _selections.contains(textId),
      selectionOrder: _selections.indexOf(textId) + 1,
      onChanged: (bool isSelected) {
        setState(() {
          if (isSelected) {
            _selections.add(textId);
          } else {
            _selections.remove(textId);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.signupPronounsTitle,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: Column(
          children: [
            Text(
              l10n.signupPronounsSubtitle,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            ..._createCheckboxes(),
          ],
        ),
      ),
      onNextPressed: () {
        _registrationModel.updateUserInput.pronounsTextIds = _selections;
        if (_isEntrepreneur) {
          context.push(Routes.signupEntrepreneurCompanyName.path);
        } else {
          context.push(Routes.signupMentorRole.path);
        }
      },
    );
  }
}
