import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:textfield_tags/textfield_tags.dart';

class AutocompletePicker extends StatelessWidget {
  final TextfieldTagsController controller;
  final String? label;
  final String? hint;
  final bool singleSelect;
  final List<String> options;
  final String Function(String)? optionsTranslations;
  final Set<String>? selectedOptions;

  const AutocompletePicker({
    super.key,
    this.label,
    this.hint,
    this.singleSelect = false,
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
              AutocompleteWidget(
                label: label,
                hint: hint,
                options: options.toList(),
                optionsTranslations: optionsTranslations ?? (s) => s,
                selectedOptions: selectedOptions?.toList() ?? [],
                singleSelect: singleSelect,
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

class AutocompleteWidget extends StatelessWidget {
  final String? label;
  final String? hint;
  final List<String> options;
  final String Function(String) optionsTranslations;
  final List<String> selectedOptions;
  final bool singleSelect;
  final TextfieldTagsController controller;

  const AutocompleteWidget({
    super.key,
    this.label,
    this.hint,
    required this.options,
    required this.selectedOptions,
    this.singleSelect = false,
    required this.controller,
    required this.optionsTranslations,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        var filteredOptions = options.where(
            (option) => !(controller.getTags?.contains(option) ?? false));

        if (textEditingValue.text == '') {
          return filteredOptions;
        }
        return filteredOptions.where((option) => optionsTranslations(option)
            .toLowerCase()
            .contains(textEditingValue.text.toLowerCase()));
      },
      displayStringForOption: optionsTranslations,
      onSelected: (String selectedTag) {
        if (singleSelect && controller.hasTags) {
          controller.clearTags();
        }
        controller.addTag = selectedTag;
      },
      fieldViewBuilder: (context, ttec, tfn, onFieldSubmitted) {
        return TextFieldTags(
          textEditingController: ttec,
          focusNode: tfn,
          textfieldTagsController: controller,
          initialTags: selectedOptions,
          validator: (String tag) {
            if (controller.getTags?.contains(tag) ?? false) {
              return l10n.errorAlreadyEntered;
            }
            if (!options.contains(tag)) {
              return l10n.errorInvalidChoice;
            }
            return null;
          },
          inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
            return ((context, sc, tags, onTagDelete) {
              return TextField(
                onTapOutside: (_) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                controller: tec,
                focusNode: fn,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: label,
                  labelStyle: TextStyle(
                    color: theme.colorScheme.onSurface,
                  ),
                  hintText: tags.isEmpty ? hint : null,
                  hintStyle: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.colorScheme.outline),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.colorScheme.outline),
                  ),
                  errorText: error,
                  suffixIcon: tags.isEmpty
                      ? Icon(
                          Icons.arrow_drop_down,
                          color: theme.colorScheme.onSurfaceVariant,
                        )
                      : null,
                  prefixIcon: tags.isNotEmpty
                      ? Padding(
                          padding:
                              const EdgeInsets.only(left: Insets.paddingSmall),
                          child: SingleChildScrollView(
                            controller: sc,
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: tags.map((String tag) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primaryContainer,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      Radii.roundedRectRadiusSmall,
                                    ),
                                  ),
                                ),
                                margin: const EdgeInsets.only(
                                  right: Insets.paddingSmall,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: Insets.paddingSmall,
                                  vertical: Insets.paddingExtraSmall,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        optionsTranslations.call(tag),
                                        style: TextStyle(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                        ),
                                      ),
                                      onTap: () => onTagDelete(tag),
                                    ),
                                    const SizedBox(
                                      width: Insets.paddingExtraSmall,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.close,
                                        size: 20.0,
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                      ),
                                      onTap: () => onTagDelete(tag),
                                    )
                                  ],
                                ),
                              );
                            }).toList()),
                          ),
                        )
                      : null,
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              );
            });
          },
        );
      },
    );
  }
}
