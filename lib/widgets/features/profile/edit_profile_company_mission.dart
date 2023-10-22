import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';

import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyMissionScreen extends StatefulWidget {
  const EditCompanyMissionScreen({Key? key}) : super(key: key);

  @override
  State<EditCompanyMissionScreen> createState() =>
      _EditCompanyMissionScreenState();
}

class _EditCompanyMissionScreenState extends State<EditCompanyMissionScreen>
    with NavigationMixin<EditCompanyMissionScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _companyMission;

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
    );
  }
}
