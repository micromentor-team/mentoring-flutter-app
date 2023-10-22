import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';

import '../../../utilities/debug_logger.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyNameScreen extends StatefulWidget {
  const EditCompanyNameScreen({Key? key}) : super(key: key);

  @override
  State<EditCompanyNameScreen> createState() => _EditCompanyNameScreenState();
}

class _EditCompanyNameScreenState extends State<EditCompanyNameScreen>
    with NavigationMixin<EditCompanyNameScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _companyName;

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
            DebugLogger.info(_companyName ?? ""); //TODO
          },
        ),
      ),
    );
  }
}
