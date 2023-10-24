import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/edit_template.dart';

class EditCompanyWebsiteScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyWebsiteScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyWebsiteScreen> createState() =>
      _EditCompanyWebsiteScreenState();
}

class _EditCompanyWebsiteScreenState extends State<EditCompanyWebsiteScreen>
    with NavigationMixin<EditCompanyWebsiteScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _companyWebsite;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
        text: widget.userData.companies.firstOrNull?.websites?.first.value);
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
      title: l10n.profileEditSectionBusinessWebsiteTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.profileEditSectionBusinessWebsiteInputLabel,
          hint: l10n.profileEditSectionBusinessWebsiteInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _companyWebsite = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateCompany(
        input: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          websites: _companyWebsite?.isNotEmpty ?? false
              ? [Input$LabeledStringValueInput(value: _companyWebsite)]
              : null,
        ),
      ),
    );
  }
}
