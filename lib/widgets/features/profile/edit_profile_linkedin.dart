import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import '../../shared/text_form_field_widget.dart';
import 'edit_template.dart';

class EditLinkedInScreen extends StatefulWidget {
  const EditLinkedInScreen({Key? key}) : super(key: key);

  @override
  State<EditLinkedInScreen> createState() => _EditLinkedInScreenState();
}

class _EditLinkedInScreenState extends State<EditLinkedInScreen> {
  String? _linkedInUrl;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return EditTemplate(
      title: l10n.profileEditLinkedInConnect,
      body: Padding(
        padding: const EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Form(
              child: TextFormFieldWidget(
                label: l10n.profileEditLinkedInUrl,
                hint: l10n.profileEditLinkedInUrlHint,
                textController: _linkedInUrl != null
                    ? TextEditingController(text: _linkedInUrl)
                    : null,
                onChanged: (value) {
                  setState(() {
                    _linkedInUrl = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Insets.paddingExtraSmall),
              child: Text(
                l10n.profileEditBusinessWeblink,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.colorScheme.onSurface),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
