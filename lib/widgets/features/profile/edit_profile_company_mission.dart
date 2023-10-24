import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyMissionScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyMissionScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyMissionScreen> createState() =>
      _EditCompanyMissionScreenState();
}

class _EditCompanyMissionScreenState extends State<EditCompanyMissionScreen>
    with NavigationMixin<EditCompanyMissionScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _companyMission;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: widget.userData.companies.firstOrNull?.description,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionBusinessMissionTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          hint: l10n.profileEditSectionBusinessMissionInputHint,
          textController: _textEditingController,
          maxLength: 1000,
          maxLines: 6,
          onChanged: (value) {
            setState(() {
              _companyMission = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateCompany(
        input: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          description: _companyMission,
        ),
      ),
    );
  }
}
