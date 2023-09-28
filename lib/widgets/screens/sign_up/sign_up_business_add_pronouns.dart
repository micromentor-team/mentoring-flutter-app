import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/content_provider.dart';
import '../../molecules/checkbox_list_and_form.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessAddPronounsScreen extends StatefulWidget {
  const SignupBusinessAddPronounsScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessAddPronounsScreen> createState() =>
      _SignupBusinessAddPronounsScreenState();
}

class _SignupBusinessAddPronounsScreenState
    extends State<SignupBusinessAddPronounsScreen> {
  late final ContentProvider _contentProvider;
  final List<String> _selections = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
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
      title: l10n.whatAreYourPronouns,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.addBusinessName.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: Column(
          children: [
            Text(
              l10n.pronounsDescription,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
              textAlign: TextAlign.center,
            ),
            ..._createCheckboxes(),
          ],
        ),
      ),
    );
  }
}
