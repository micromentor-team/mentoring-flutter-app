import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';

import '../../../utilities/debug_logger.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditConnectLinkedInScreen extends StatefulWidget {
  const EditConnectLinkedInScreen({Key? key}) : super(key: key);

  @override
  State<EditConnectLinkedInScreen> createState() =>
      _EditConnectLinkedInScreenState();
}

class _EditConnectLinkedInScreenState extends State<EditConnectLinkedInScreen>
    with NavigationMixin<EditConnectLinkedInScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _linkedInUrl;

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
      title: l10n.profileEditSectionAboutLinkedInTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.profileEditSectionAboutLinkedInInputLabel,
          hint: l10n.profileEditSectionAboutLinkedInInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _linkedInUrl = value;
            });
            DebugLogger.info(_linkedInUrl ?? ""); //TODO
          },
        ),
      ),
    );
  }
}
