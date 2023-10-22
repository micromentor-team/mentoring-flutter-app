import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditEducationScreen extends StatefulWidget {
  final bool isNewEducation;

  const EditEducationScreen({
    super.key,
    required this.isNewEducation,
  });

  @override
  State<EditEducationScreen> createState() => _EditEducationScreenState();
}

class _EditEducationScreenState extends State<EditEducationScreen>
    with NavigationMixin<EditEducationScreen> {
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _degreeController = TextEditingController();
  final TextEditingController _fieldController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  bool _showInHeader = false;

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
      title: widget.isNewEducation
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
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDegreeInputLabel,
              hint: l10n.profileEditSectionEducationDegreeInputHint,
              textController: _degreeController,
              maxLength: 50,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationStudyFieldInputLabel,
              hint: l10n.profileEditSectionEducationStudyFieldInputHint,
              textController: _fieldController,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingExtraLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDateStartInputLabel,
              hint: l10n.profileEditSectionEducationDateInputHint,
              textController: _startDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionEducationDateEndInputLabel,
              hint: l10n.profileEditSectionEducationDateInputHint,
              textController: _endDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
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
    );
  }
}
