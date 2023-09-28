import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

import '../../molecules/checkbox_list_and_form.dart';
import 'sign_up_bottom_buttons.dart';

class SignupMentorPronounsScreen extends StatefulWidget {
  const SignupMentorPronounsScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorPronounsScreen> createState() =>
      _SignupMentorPronounsScreenState();
}

class _SignupMentorPronounsScreenState
    extends State<SignupMentorPronounsScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.whatAreYourPronouns,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupMentorRole.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          Text(
            l10n.pronounsDescription,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
            textAlign: TextAlign.center,
          ),
          const PronounExample(),
        ],
      ),
    );
  }
}

class PronounExample extends StatefulWidget {
  const PronounExample({Key? key}) : super(key: key);

  @override
  State<PronounExample> createState() => _PronounExampleState();
}

class _PronounExampleState extends State<PronounExample> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  int _numPronounsSelect = 0;
  int _selectionorder1 = 0;
  int _selectionorder2 = 0;
  int _selectionorder3 = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledCheckbox(
          label: 'she/her',
          id: 'f',
          value: _isSelected1,
          selectionOrder: _selectionorder1,
          onChanged: (bool value) {
            setState(() {
              _isSelected1 = value;
              if (value == true) {
                _selectionorder1 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder1 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
        LabeledCheckbox(
          label: 'he/him',
          id: 'm',
          value: _isSelected2,
          selectionOrder: _selectionorder2,
          onChanged: (bool value) {
            setState(() {
              _isSelected2 = value;
              if (value == true) {
                _selectionorder2 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder2 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
        LabeledCheckbox(
          label: 'they/them',
          id: 'x',
          value: _isSelected3,
          selectionOrder: _selectionorder3,
          onChanged: (bool value) {
            setState(() {
              _isSelected3 = value;
              if (value == true) {
                _selectionorder3 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder3 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
      ],
    );
  }
}
