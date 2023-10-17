import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/content_provider.dart';
import '../../../providers/models/user_registration_model.dart';
import 'components/multi_select_chips.dart';

class SignupIndustriesScreen extends StatefulWidget {
  const SignupIndustriesScreen({Key? key}) : super(key: key);

  @override
  State<SignupIndustriesScreen> createState() => _SignupIndustriesScreenState();
}

class _SignupIndustriesScreenState extends State<SignupIndustriesScreen> {
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final List<SelectChip> _industryChips;
  late final bool _isEntrepreneur;
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
    _industryChips = _contentProvider.industryOptions!
        .map(
          (e) => SelectChip(
            chipName: e.translatedValue!,
            textId: e.textId,
            icon: Icons.work_outline,
          ),
        )
        .toList();
    _industryChips.sort((a, b) => a.chipName.compareTo(b.chipName));
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: _isEntrepreneur
          ? l10n.signupIndustryEntrepreneurTitle
          : l10n.signupIndustryMentorTitle,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateMultiSelectChips(
            label: _isEntrepreneur
                ? l10n.signupIndustrySubtitleSingle
                : l10n.signupIndustrySubtitleMultiple(3),
            chips: _industryChips,
            maxSelection: _isEntrepreneur ? 1 : 3,
            onSelectedChipsChanged: (chips) =>
                setState(() => _selectedChips = chips),
          ),
        ],
      ),
      isNextEnabled: _selectedChips.isNotEmpty,
      onNextPressed: () {
        if (_isEntrepreneur) {
          _registrationModel.updateUserInput.menteeIndustryTextId =
              _selectedChips.firstOrNull?.textId;
          context.push(Routes.signupCompleted.path);
        } else {
          _registrationModel.updateUserInput.mentorIndustriesTextIds =
              _selectedChips.map((e) => e.textId).toList();
          context.push(Routes.signupMentorPreferences.path);
        }
      },
    );
  }
}
