import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditExperienceScreen extends StatefulWidget {
  final bool isNewExperience;

  const EditExperienceScreen({
    super.key,
    required this.isNewExperience,
  });

  @override
  State<EditExperienceScreen> createState() => _EditExperienceScreenState();
}

class _EditExperienceScreenState extends State<EditExperienceScreen>
    with NavigationMixin<EditExperienceScreen> {
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  bool _isCurrentRole = false;
  bool _showInHeader = false;

  @override
  void dispose() {
    _roleController.dispose();
    _companyController.dispose();
    _locationController.dispose();
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
      title: widget.isNewExperience
          ? l10n.profileEditSectionExperienceAddTitle
          : l10n.profileEditSectionExperienceEditTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: Column(
          children: [
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceRoleInputLabel,
              hint: l10n.profileEditSectionExperienceRoleInputHint,
              textController: _roleController,
              maxLength: 50,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceCompanyInputLabel,
              hint: l10n.profileEditSectionExperienceCompanyInputHint,
              textController: _companyController,
              maxLength: 50,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceLocationInputLabel,
              hint: l10n.profileEditSectionExperienceLocationInputHint,
              textController: _locationController,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingExtraLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceDateStartInputLabel,
              hint: l10n.profileEditSectionExperienceDateInputHint,
              textController: _startDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  //TODO - Validate and set user field
                });
              },
            ),
            const SizedBox(height: Insets.paddingLarge),
            CheckboxListTile(
                title: Text(
                  l10n.profileEditSectionExperienceDateEndPresentInputLabel,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                value: _isCurrentRole,
                onChanged: (value) {
                  setState(() => _isCurrentRole = value ?? false);
                }),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceDateEndInputLabel,
              hint: l10n.profileEditSectionExperienceDateInputHint,
              textController: _endDateController,
              keyboardType: TextInputType.number,
              enabled: !_isCurrentRole,
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
                  l10n.profileEditSectionExperienceShowInHeaderInputLabel,
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
