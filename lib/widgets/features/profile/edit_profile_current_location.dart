import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditCurrentLocationScreen extends StatefulWidget {
  const EditCurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditCurrentLocationScreen> createState() =>
      _EditCurrentLocationScreenState();
}

class _EditCurrentLocationScreenState extends State<EditCurrentLocationScreen>
    with NavigationMixin<EditCurrentLocationScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _city;

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
      title: l10n.profileEditSectionAboutCurrentLocationTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.profileEditSectionAboutCurrentLocationInputLabel,
          hint: l10n.profileEditSectionAboutCurrentLocationInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _city = value;
            });
          },
        ),
      ),
    );
  }
}
