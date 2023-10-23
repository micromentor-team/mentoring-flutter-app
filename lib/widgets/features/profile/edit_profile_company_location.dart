import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyLocationScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyLocationScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyLocationScreen> createState() =>
      _EditCompanyLocationScreenState();
}

class _EditCompanyLocationScreenState extends State<EditCompanyLocationScreen>
    with NavigationMixin<EditCompanyLocationScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _companyLocation;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: null, //TODO - Set initial value from userData
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
      title: l10n.profileEditSectionBusinessLocationTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.profileEditSectionBusinessLocationInputLabel,
          hint: l10n.profileEditSectionBusinessLocationInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _companyLocation = value;
            });
            DebugLogger.info(_companyLocation ?? ""); //TODO - Use value
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateCompany(
        input: Input$CompanyInput(
          id: widget.userData.companies.firstOrNull?.id,
          // TODO - Update business location
        ),
      ),
    );
  }
}
