import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';

import '../../constants/app_constants.dart';

class ReportUserDialog extends StatefulWidget {
  final String userFullName;
  final String userId;
  const ReportUserDialog({
    super.key,
    required this.userId,
    required this.userFullName,
  });

  @override
  State<ReportUserDialog> createState() => _ReportUserDialogState();
}

class _ReportUserDialogState extends State<ReportUserDialog> {
  late final TextEditingController _textEditingController;
  final _formKey = GlobalKey<FormState>();
  String? _reason;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          title: Text(l10n.popupReportTitle(widget.userFullName)),
          content: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.popupReportSubtitle),
                const SizedBox(height: Insets.paddingLarge),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(l10n.popupReportReasonContent),
                      trailing: Radio<String>(
                        value: l10n.popupReportReasonContent,
                        groupValue: _reason,
                        onChanged: (String? value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(l10n.popupReportReasonOffTopic),
                      trailing: Radio<String>(
                        value: l10n.popupReportReasonOffTopic,
                        groupValue: _reason,
                        onChanged: (String? value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(l10n.popupReportReasonSpam),
                      trailing: Radio<String>(
                        value: l10n.popupReportReasonSpam,
                        groupValue: _reason,
                        onChanged: (String? value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(l10n.popupReportReasonHarassment),
                      trailing: Radio<String>(
                        value: l10n.popupReportReasonHarassment,
                        groupValue: _reason,
                        onChanged: (String? value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(l10n.popupReportReasonOther),
                      trailing: Radio<String>(
                        value: l10n.popupReportReasonOther,
                        groupValue: _reason,
                        onChanged: (String? value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      subtitle: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            hintText: l10n.popupReportReasonOtherSpecify,
                          ),
                          validator: (text) {
                            if (_reason == l10n.popupReportReasonOther &&
                                (text?.isEmpty ?? true)) {
                              return l10n.errorEmptyField;
                            }
                            return null;
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text(l10n.actionCancel),
              onPressed: () => Navigator.pop(context),
            ),
            OutlinedButton(
              child: Text(l10n.actionReport),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //TODO: Report user
                  DebugLogger.info(
                    'TODO: Report user: $_reason ${_textEditingController.text}',
                  );
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
