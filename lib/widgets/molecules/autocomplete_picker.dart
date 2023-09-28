import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/autocomplete_widget.dart';
import 'package:textfield_tags/textfield_tags.dart';

class AutocompletePicker extends StatelessWidget {
  final TextfieldTagsController controller;
  final String? fieldName;
  final List<String> options;
  final String Function(String)? optionsTranslations;
  final Set<String>? selectedOptions;

  const AutocompletePicker({
    super.key,
    this.fieldName,
    required this.controller,
    required this.options,
    this.optionsTranslations,
    this.selectedOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (fieldName != null) ...[
                Text(fieldName!),
                const SizedBox(height: Insets.paddingExtraSmall),
              ],
              AutocompleteWidget(
                options: options.toList(),
                optionsTranslations: optionsTranslations,
                selectedOptions: selectedOptions?.toList() ?? [],
                controller: controller,
              ),
              const SizedBox(height: Insets.paddingSmall),
            ],
          ),
        ),
      ],
    );
  }
}
