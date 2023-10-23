import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:provider/provider.dart';

import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyNameScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyNameScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyNameScreen> createState() => _EditCompanyNameScreenState();
}

class _EditCompanyNameScreenState extends State<EditCompanyNameScreen>
    with NavigationMixin<EditCompanyNameScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _companyName;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: widget.userData.companies.firstOrNull?.name,
    );
  }

  @override
  void didPop() async {
    await _userProvider.updateUserData(
      input: Input$UserInput(
        id: widget.userData.id,
        company: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          name: _companyName,
        ),
      ),
    );
    super.didPop();
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
      title: l10n.profileEditSectionBusinessNameTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.profileEditSectionBusinessNameInputLabel,
          hint: l10n.profileEditSectionBusinessNameInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _companyName = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateCompany(
        input: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          name: _companyName,
        ),
      ),
    );
  }
}
