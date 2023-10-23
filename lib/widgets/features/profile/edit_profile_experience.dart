import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditExperienceScreen extends StatefulWidget {
  final UserDetailedProfile userData;
  final int? experienceIndex;

  const EditExperienceScreen({
    super.key,
    required this.userData,
    this.experienceIndex,
  });

  @override
  State<EditExperienceScreen> createState() => _EditExperienceScreenState();
}

class _EditExperienceScreenState extends State<EditExperienceScreen>
    with NavigationMixin<EditExperienceScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _roleController;
  late final TextEditingController _companyController;
  late final TextEditingController _locationController;
  late final TextEditingController _startDateController;
  late final TextEditingController _endDateController;
  String? _role;
  String? _company;
  String? _location;
  String? _startDate;
  String? _endDate;
  bool _isCurrentRole = false;
  bool _showInHeader = false;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    if (widget.experienceIndex == null) {
      // New experience
      _roleController = TextEditingController();
      _companyController = TextEditingController();
      _locationController = TextEditingController();
      _startDateController = TextEditingController();
      _endDateController = TextEditingController();
    } else {
      // Edit existing entry
      final experience =
          widget.userData.businessExperiences![widget.experienceIndex!];
      _roleController = TextEditingController(
        text: experience.jobTitle,
      );
      _companyController = TextEditingController(
        text: experience.businessName,
      );
      _locationController = TextEditingController(
        text: experience.city, //TODO - Use state too
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
      title: widget.experienceIndex == null
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
              onChanged: (value) => setState(() => _role = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceCompanyInputLabel,
              hint: l10n.profileEditSectionExperienceCompanyInputHint,
              textController: _companyController,
              maxLength: 50,
              onChanged: (value) => setState(() => _company = value),
            ),
            const SizedBox(height: Insets.paddingLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceLocationInputLabel,
              hint: l10n.profileEditSectionExperienceLocationInputHint,
              textController: _locationController,
              onChanged: (value) => setState(() => _location = value),
            ),
            const SizedBox(height: Insets.paddingExtraLarge),
            TextFormFieldWidget(
              label: l10n.profileEditSectionExperienceDateStartInputLabel,
              hint: l10n.profileEditSectionExperienceDateInputHint,
              textController: _startDateController,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() => _startDate = value),
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
      editUserProfile: widget.experienceIndex == null
          ? () => _userProvider.updateUserData(
                input: Input$UserInput(
                  id: widget.userData.id,
                  businessExperiences: [
                    Input$BusinessExperienceInput(
                      jobTitle: _role,
                      businessName: _company,
                      city: _location, //TODO - Set state too
                      startDate: _startDate?.isNotEmpty ?? false
                          ? DateTime(int.parse(_startDate!)).toUtc()
                          : null,
                      endDate:
                          (_endDate?.isNotEmpty ?? false) && !_isCurrentRole
                              ? DateTime(int.parse(_endDate!)).toUtc()
                              : null,
                    ),
                  ],
                ),
              )
          : () => _userProvider.updateBusinessExperience(
                input: Input$BusinessExperienceInput(
                  id: widget.userData
                      .businessExperiences![widget.experienceIndex!].id,
                  jobTitle: _role,
                  businessName: _company,
                  city: _location, //TODO - Set state too
                  startDate: _startDate?.isNotEmpty ?? false
                      ? DateTime(int.parse(_startDate!)).toUtc()
                      : null,
                  endDate: (_endDate?.isNotEmpty ?? false) && !_isCurrentRole
                      ? DateTime(int.parse(_endDate!)).toUtc()
                      : null,
                ),
              ),
    );
  }
}
