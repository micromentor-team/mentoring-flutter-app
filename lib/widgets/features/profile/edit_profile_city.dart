import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import '../../shared/text_form_field_widget.dart';
import 'edit_template.dart';

class EditCityScreen extends StatefulWidget {
  const EditCityScreen({Key? key}) : super(key: key);

  @override
  State<EditCityScreen> createState() => _EditCityScreenState();
}

class _EditCityScreenState extends State<EditCityScreen> {
  String? _city;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return EditTemplate(
      title: l10n.profileEditCurrentLocation,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Form(
              child: TextFormFieldWidget(
                prefixIcon: const Icon(Icons.search),
                label: l10n.profileEditLocationInputLabel,
                hint: l10n.profileEditLocationInputHint,
                textController:
                    _city != null ? TextEditingController(text: _city) : null,
                onChanged: (value) {
                  setState(() {
                    _city = value;
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
