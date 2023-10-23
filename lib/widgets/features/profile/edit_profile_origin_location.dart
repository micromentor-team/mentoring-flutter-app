import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import '../../shared/text_form_field_widget.dart';
import 'edit_template.dart';

class EditOriginLocationScreen extends StatefulWidget {
  const EditOriginLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditOriginLocationScreen> createState() =>
      _EditOriginLocationScreenState();
}

class _EditOriginLocationScreenState extends State<EditOriginLocationScreen> {
  String? _originLocation;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return EditTemplate(
      title: l10n.profileEditOriginLocation,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Form(
              child: TextFormFieldWidget(
                prefixIcon: const Icon(Icons.search),
                label: l10n.profileEditOriginLocationLabel,
                hint: l10n.profileEditOriginLocationHint,
                textController: _originLocation != null
                    ? TextEditingController(text: _originLocation)
                    : null,
                onChanged: (value) {
                  setState(() {
                    _originLocation = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
