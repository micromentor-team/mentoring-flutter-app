import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/explore_card_filters_provider.dart';
import 'package:mm_flutter_app/providers/models/scaffold_model.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/atoms/clear_apply_buttons.dart';
import 'package:mm_flutter_app/widgets/molecules/autocomplete_picker.dart';
import 'package:textfield_tags/textfield_tags.dart';

class RecommendedMentorsFiltersAdvanced extends StatefulWidget {
  const RecommendedMentorsFiltersAdvanced({super.key});

  @override
  State<StatefulWidget> createState() => _RecommendedMentorsFiltersAdvanced();
}

class _RecommendedMentorsFiltersAdvanced
    extends State<RecommendedMentorsFiltersAdvanced>
    with RouteAwareMixin<RecommendedMentorsFiltersAdvanced> {
  String? _selectedIndustry;
  late final TextfieldTagsController _userTypesController;
  late final ExploreCardFiltersProvider _filtersProvider;
  late final TextEditingController _keywordController;

  @override
  void initState() {
    super.initState();
    _userTypesController = TextfieldTagsController();
    _filtersProvider =
        Provider.of<ExploreCardFiltersProvider>(context, listen: false);
    _selectedIndustry = _filtersProvider.selectedIndustry;
    _keywordController =
        TextEditingController(text: _filtersProvider.selectedKeyword);
  }

  @override
  void dispose() {
    _userTypesController.dispose();
    _keywordController.dispose();
    super.dispose();
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setAppBarTitleOnly(context,
          AppLocalizations.of(context)!.exploreSearchFilterAdvancedTitle);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.exploreSearchFilterIndustry),
                    const SizedBox(height: Insets.paddingExtraSmall),
                    DropdownButton<String>(
                      isExpanded: true,
                      items: ExploreCardFiltersProvider.industries
                          .map((industry) => DropdownMenuItem(
                                value: l10n
                                    .exploreSearchFilterIndustries(industry),
                                child: Text(industry),
                              ))
                          .toList(),
                      onChanged: (industry) => setState(() {
                        _selectedIndustry = industry;
                      }),
                      value: _selectedIndustry,
                    ),
                    const SizedBox(height: Insets.paddingSmall),
                  ],
                ),
              )
            ],
          ),
          AutocompletePicker(
            fieldName: l10n.exploreSearchFilterUserType,
            controller: _userTypesController,
            options: ExploreCardFiltersProvider.userTypes,
            optionsTranslations: l10n.exploreSearchFilterUserTypes,
            selectedOptions: _filtersProvider.selectedUserTypes,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.exploreSearchFilterKeyword),
                    const SizedBox(height: Insets.paddingExtraSmall),
                    TextFormField(
                      controller: _keywordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: theme.colorScheme.outline, width: 3.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: theme.colorScheme.outline, width: 3.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: Insets.paddingSmall),
                  ],
                ),
              )
            ],
          ),
          ClearApplyButtons(
            onClear: () => setState(() {
              _selectedIndustry = null;
              _userTypesController.clearTags();
            }),
            onApply: () {
              _filtersProvider.setAdvancedFilters(
                selectedIndustry: _selectedIndustry,
                selectedUserTypes: _userTypesController.getTags?.toSet(),
                selectedKeyword: _keywordController.text,
              );

              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
