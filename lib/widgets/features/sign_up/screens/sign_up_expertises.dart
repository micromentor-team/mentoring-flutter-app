import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../../../shared/multi_select_chips.dart';
import '../components/sign_up_template.dart';

class SignupExpertisesScreen extends StatefulWidget {
  const SignupExpertisesScreen({super.key});

  @override
  State<SignupExpertisesScreen> createState() => _SignupExpertisesScreenState();
}

class _SignupExpertisesScreenState extends State<SignupExpertisesScreen> {
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final List<SelectChip> _expertiseChips;
  late final bool _isEntrepreneur;
  final int maxSelections = 3;

  late List<SelectChip> _selectedChips;
  late final List<SelectChip> _initialSelection;

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
          ),
        )
        .toList();
    _expertiseChips.sort((a, b) => a.chipName.compareTo(b.chipName));
    // Initialize with pre-selected values
    if (_isEntrepreneur) {
      _initialSelection = _registrationModel
              .updateUserInput.menteeSoughtExpertisesTextIds
              ?.map((e) =>
                  _expertiseChips.where((c) => c.textId == e).firstOrNull)
              .nonNulls
              .toList() ??
          [];
    } else {
      _initialSelection = _registrationModel
              .updateUserInput.mentorExpertisesTextIds
              ?.map((e) =>
                  _expertiseChips.where((c) => c.textId == e).firstOrNull)
              .nonNulls
              .toList() ??
          [];
    }
    _selectedChips = _initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: _isEntrepreneur
          ? l10n.signupExpertisesEntrepreneurTitle
          : l10n.signupExpertisesMentorTitle,
      subtitle: _isEntrepreneur
          ? l10n.signupExpertisesEntrepreneurSubtitle
          : l10n.signupExpertisesMentorSubtitle,
      body: CreateMultiSelectChips(
        chips: _expertiseChips,
        maxSelection: maxSelections,
        initialSelection: _initialSelection,
        onSelectedChipsChanged: (chips) =>
            setState(() => _selectedChips = chips),
      ),
      isNextEnabled: _selectedChips.isNotEmpty,
      onNextPressed: () {
        if (_isEntrepreneur) {
          _registrationModel.updateUserInput.menteeSoughtExpertisesTextIds =
              _selectedChips.map((e) => e.textId).toList();
          context.push(Routes.signupEntrepreneurCompanyStage.path);
        } else {
          _registrationModel.updateUserInput.mentorExpertisesTextIds =
              _selectedChips.map((e) => e.textId).toList();
          context.push(Routes.signupMentorRole.path);
        }
      },
    );
  }
}
