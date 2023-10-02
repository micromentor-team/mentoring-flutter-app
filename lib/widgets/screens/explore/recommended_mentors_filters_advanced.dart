import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:mm_flutter_app/widgets/atoms/clear_apply_buttons.dart';
import 'package:mm_flutter_app/widgets/molecules/autocomplete_picker.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../../utilities/scaffold_utils/appbar_factory.dart';

class RecommendedMentorsFiltersAdvanced extends StatefulWidget {
  const RecommendedMentorsFiltersAdvanced({super.key});

  @override
  State<StatefulWidget> createState() => _RecommendedMentorsFiltersAdvanced();
}

class _RecommendedMentorsFiltersAdvanced
    extends State<RecommendedMentorsFiltersAdvanced>
    with NavigationMixin<RecommendedMentorsFiltersAdvanced> {
  late final ContentProvider _contentProvider;
  late final TextfieldTagsController _userTypesController;
  late final TextfieldTagsController _industriesController;
  late final ExploreCardFiltersModel _filtersModel;
  late final TextEditingController _keywordController;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _filtersModel = Provider.of<ExploreCardFiltersModel>(
      context,
      listen: false,
    );
    _userTypesController = TextfieldTagsController();
    _industriesController = TextfieldTagsController();
    _keywordController =
        TextEditingController(text: _filtersModel.selectedKeyword);
  }

  @override
  void dispose() {
    try {
      _userTypesController.dispose();
      _keywordController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setParams(
        appBar: AppBarFactory.createTitleOnlyAppBar(
          title: AppLocalizations.of(context)!.exploreSearchFilterAdvancedTitle,
        ),
      );
    });
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: Column(
        children: [
          AutocompletePicker(
            fieldName: l10n.exploreSearchFilterIndustry,
            controller: _industriesController,
            options: _filtersModel.industries,
            optionsTranslations: (textId) => _contentProvider.industryOptions!
                .firstWhere((e) => e.textId == textId)
                .translatedValue!,
            selectedOptions: _filtersModel.selectedIndustries,
          ),
          AutocompletePicker(
            fieldName: l10n.exploreSearchFilterUserType,
            controller: _userTypesController,
            options: _filtersModel.userTypes,
            optionsTranslations: l10n.exploreSearchFilterUserTypes,
            selectedOptions: _filtersModel.selectedUserTypes,
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
              _industriesController.clearTags();
              _userTypesController.clearTags();
            }),
            onApply: () {
              _filtersModel.setAdvancedFilters(
                selectedIndustries: _industriesController.getTags?.toSet(),
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
