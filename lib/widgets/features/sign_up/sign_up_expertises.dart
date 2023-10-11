import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/multi_select_chips.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../providers/content_provider.dart';
import '../../../providers/models/user_registration_model.dart';
import 'components/sign_up_bottom_buttons.dart';

class SignupExpertisesScreen extends StatefulWidget {
  const SignupExpertisesScreen({Key? key}) : super(key: key);

  @override
  State<SignupExpertisesScreen> createState() => _SignupExpertisesScreenState();
}

class _SignupExpertisesScreenState extends State<SignupExpertisesScreen> {
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final List<SelectChip> _expertiseChips;
  late final bool _isEntrepreneur;
  final int maxSelections = 3;

  List<SelectChip> _selectedChips = [];

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
      title: _isEntrepreneur
          ? l10n.signupExpertisesEntrepreneurTitle
          : l10n.signupExpertisesMentorTitle,
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _selectedChips.isNotEmpty
            ? () {
                if (_isEntrepreneur) {
                  _registrationModel
                          .updateUserInput.menteeSoughtExpertisesTextIds =
                      _selectedChips.map((e) => e.textId).toList();
                } else {
                  _registrationModel.updateUserInput.mentorExpertisesTextIds =
                      _selectedChips.map((e) => e.textId).toList();
                }
                context.push(Routes.signupMoreInfo.path);
              }
            : null,
      ),
      footer: SignUpIconFooter(
        icon: Icons.visibility_outlined,
        text: l10n.signUpShownOnProfileInfo,
      ),
      body: Column(
        children: [
          CreateMultiSelectChips(
            label: _isEntrepreneur
                ? l10n.signupExpertisesEntrepreneurSubtitle(maxSelections)
                : l10n.signupExpertisesMentorSubtitle(maxSelections),
            chips: _expertiseChips,
            maxSelection: maxSelections,
            onSelectedChipsChanged: (chips) =>
                setState(() => _selectedChips = chips),
          ),
        ],
      ),
    );
  }
}
