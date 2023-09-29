import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/multi_select_chips.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/content_provider.dart';
import '../../../providers/models/user_registration_model.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessHelpSelectionScreen extends StatefulWidget {
  const SignupBusinessHelpSelectionScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessHelpSelectionScreen> createState() =>
      _SignupBusinessHelpSelectionScreenState();
}

class _SignupBusinessHelpSelectionScreenState
    extends State<SignupBusinessHelpSelectionScreen> {
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final List<SelectChip> _expertiseChips;

  List<SelectChip> _selectedChips = [];

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _expertiseChips = _contentProvider.expertiseOptions!
        .map(
          (e) => SelectChip(
            chipName: e.translatedValue!,
            textId: e.textId,
            icon: Icons.work_outline,
          ),
        )
        .toList();
    _expertiseChips.sort((a, b) => a.chipName.compareTo(b.chipName));
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.lookingForHelp,
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: () {
          _registrationModel.updateUserInput.menteeSoughtExpertisesTextIds =
              _selectedChips.map((e) => e.textId).toList();
          context.push(Routes.signupMoreInfo.path);
        },
      ),
      footer: SignUpIconFooter(
        icon: Icons.visibility_outlined,
        text: l10n.signUpShownOnProfileInfo,
      ),
      body: Column(
        children: [
          CreateMultiSelectChips(
            chips: _expertiseChips,
            maxSelection: 3,
            onSelectedChipsChanged: (chips) => _selectedChips = chips,
          ),
        ],
      ),
    );
  }
}
