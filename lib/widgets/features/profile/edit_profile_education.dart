import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../../__generated/schema/schema.graphql.dart';
import '../../../providers/user_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditEducationScreen extends StatefulWidget {
  final UserDetailedProfile userData;
  final int? experienceIndex;

  const EditEducationScreen({
    super.key,
    required this.userData,
    this.experienceIndex,
  });

  @override
  State<EditEducationScreen> createState() => _EditEducationScreenState();
}

class _EditEducationScreenState extends State<EditEducationScreen>
    with NavigationMixin<EditEducationScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _schoolController;
  late final TextEditingController _degreeController;
  late final TextEditingController _fieldController;
  late final TextEditingController _startDateController;
  late final TextEditingController _endDateController;
  String? _school;
  String? _degree;
  String? _field;
  String? _startDate;
  String? _endDate;
  bool _showInHeader = false;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    if (widget.experienceIndex == null) {
      // New experience
      _schoolController = TextEditingController();
      _degreeController = TextEditingController();
      _fieldController = TextEditingController();
      _startDateController = TextEditingController();
      _endDateController = TextEditingController();
    } else {
      // Edit existing entry
      final experience =
          widget.userData.academicExperiences![widget.experienceIndex!];
      _schoolController = TextEditingController(
        text: experience.institutionName,
      );
      _degreeController = TextEditingController(
        text: experience.degreeType,
      );
      _fieldController = TextEditingController(
        text: experience.fieldOfStudy,
      );
      _startDateController = TextEditingController(
        text: experience.startDate.year.toString(),
      );
      _endDateController = TextEditingController(
        text: experience.endDate?.year.toString(),
      );
    }
  }

  @override
  void dispose() {
    _schoolController.dispose();
    _degreeController.dispose();
    _fieldController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return EditTemplate(
      title: widget.experienceIndex == null
          ? l10n.profileEditSectionEducationAddTitle
          : l10n.profileEditSectionEducationEditTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: Column(
          children: [
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationSchoolInputLabel,
              hint: l10n.profileEditSectionEducationSchoolInputHint,
              textController: _schoolController,
              maxLength: 50,
              onChanged: (value) => setState(() => _school = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDegreeInputLabel,
              hint: l10n.profileEditSectionEducationDegreeInputHint,
              textController: _degreeController,
              maxLength: 50,
              onChanged: (value) => setState(() => _degree = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationStudyFieldInputLabel,
              hint: l10n.profileEditSectionEducationStudyFieldInputHint,
              textController: _fieldController,
              onChanged: (value) => setState(() => _field = value),
            ),
            const SizedBox(height: Insets.paddingExtraLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDateStartInputLabel,
              hint: l10n.profileEditSectionEducationDateInputHint,
              textController: _startDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() => _startDate = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDateEndInputLabel,
              hint: l10n.profileEditSectionEducationDateInputHint,
              textController: _endDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() => _endDate = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            InkWell(
              onTap: () {
                setState(() => _showInHeader = !_showInHeader);
              },
              child: ListTile(
                leading: Switch(
                  value: _showInHeader,
                  onChanged: (value) {
                    setState(() => _showInHeader = value);
                  },
                ),
                title: Text(
                  l10n.profileEditSectionEducationShowInHeaderInputLabel,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      editUserProfile: widget.experienceIndex == null
          ? () => _userProvider.updateUserData(
                input: Input$UserInput(
                  id: widget.userData.id,
                  academicExperiences: [
                    Input$AcademicExperienceInput(
                      institutionName: _school,
                      degreeType: _degree,
                      fieldOfStudy: _field,
                      startDate: _startDate?.isNotEmpty ?? false
                          ? DateTime(int.parse(_startDate!)).toUtc()
                          : null,
                      endDate: _endDate?.isNotEmpty ?? false
                          ? DateTime(int.parse(_endDate!)).toUtc()
                          : null,
                    ),
                  ],
                ),
              )
          : () => _userProvider.updateAcademicExperience(
                input: Input$AcademicExperienceInput(
                  id: widget.userData
                      .businessExperiences![widget.experienceIndex!].id,
                  institutionName: _school,
                  degreeType: _degree,
                  fieldOfStudy: _field,
                  startDate: _startDate?.isNotEmpty ?? false
                      ? DateTime(int.parse(_startDate!)).toUtc()
                      : null,
                  endDate: _endDate?.isNotEmpty ?? false
                      ? DateTime(int.parse(_endDate!)).toUtc()
                      : null,
                ),
              ),
    );
  }
}
