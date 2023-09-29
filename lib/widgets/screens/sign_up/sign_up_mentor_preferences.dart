import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';
import '../../molecules/multi_select_chips.dart';
import 'components/sign_up_bottom_buttons.dart';

class SignupMentorPreferencesScreen extends StatefulWidget {
  const SignupMentorPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<SignupMentorPreferencesScreen> createState() =>
      _SignupMentorPreferencesScreenState();
}

class _SignupMentorPreferencesScreenState
    extends State<SignupMentorPreferencesScreen> {
  late final UserRegistrationModel _registrationModel;
  List<SelectChip>? _selectedChips;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: l10n.signupMentoringPreferencesTitle,
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _selectedChips?.isNotEmpty ?? false
            ? () {
                _registrationModel.updateUserInput.mentoringPreferences =
                    _selectedChips!.map((e) => e.textId).toList();
                context.push(Routes.signupMentorInternationally.path);
              }
            : null,
      ),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        children: [
          CreateMultiSelectChips(
            label: l10n.signupMentoringPreferencesSubtitle,
            chips: [
              // TODO - Implement in backend
              SelectChip(chipName: 'Weekly check-ins', textId: 'weeklyCheckIn'),
              SelectChip(
                  chipName: 'Monthly check-ins', textId: 'monthlyCheckIn'),
              SelectChip(
                  chipName: 'One-off sessions', textId: 'oneOffSessions'),
              SelectChip(chipName: 'Informal chats', textId: 'informalChats'),
              SelectChip(chipName: 'Formal meetings', textId: 'formatMeetings'),
              SelectChip(chipName: 'Long term', textId: 'longTerm'),
            ],
            onSelectedChipsChanged: (chips) => setState(
              () => _selectedChips = chips,
            ),
          ),
        ],
      ),
    );
  }
}
