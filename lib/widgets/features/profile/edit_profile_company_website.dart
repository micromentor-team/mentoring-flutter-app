import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';

import '../../../utilities/debug_logger.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCompanyWebsiteScreen extends StatefulWidget {
  const EditCompanyWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<EditCompanyWebsiteScreen> createState() =>
      _EditCompanyWebsiteScreenState();
}

class _EditCompanyWebsiteScreenState extends State<EditCompanyWebsiteScreen>
    with NavigationMixin<EditCompanyWebsiteScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _companyWebsite;

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
            DebugLogger.info(_companyWebsite ?? ""); //TODO
          },
        ),
      ),
    );
  }
}
