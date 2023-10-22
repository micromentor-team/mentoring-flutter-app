import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utilities/debug_logger.dart';
import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditOriginLocationScreen extends StatefulWidget {
  const EditOriginLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditOriginLocationScreen> createState() =>
      _EditOriginLocationScreenState();
}

class _EditOriginLocationScreenState extends State<EditOriginLocationScreen>
    with NavigationMixin<EditOriginLocationScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _originLocation;

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
      title: l10n.profileEditSectionAboutOriginLocationTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.profileEditSectionAboutOriginLocationInputLabel,
          hint: l10n.profileEditSectionAboutOriginLocationInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _originLocation = value;
            });
            DebugLogger.info(_originLocation ?? ""); //TODO
          },
        ),
      ),
    );
  }
}
