import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../constants/constants.dart';
import '../../../../models/explore_card_filters_model.dart';
import '../../../../services/graphql/providers/content_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/autocomplete_picker.dart';
import '../components/clear_apply_buttons.dart';

class ExploreAdvancedFiltersScreen extends StatefulWidget {
  const ExploreAdvancedFiltersScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RecommendedMentorsFiltersAdvanced();
}

class _RecommendedMentorsFiltersAdvanced
    extends State<ExploreAdvancedFiltersScreen>
    with NavigationMixin<ExploreAdvancedFiltersScreen> {
  late final ContentProvider _contentProvider;
  late final TextfieldTagsController _industriesController;
  late final TextfieldTagsController _companyStageController;
  late final ExploreCardFiltersModel _filtersModel;
  late final TextEditingController _keywordController;
  late UserType _userType;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _filtersModel = Provider.of<ExploreCardFiltersModel>(
      context,
      listen: false,
    );
    _industriesController = TextfieldTagsController();
    _companyStageController = TextfieldTagsController();
    _keywordController =
        TextEditingController(text: _filtersModel.selectedKeyword);
    _userType = _filtersModel.selectedUserType ?? UserType.mentor;
  }

  @override
  void dispose() {
    try {
      _keywordController.dispose();
      _companyStageController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    buildPageRouteScaffold(
      (scaffoldModel) => scaffoldModel.setParams(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(
              Icons.navigate_before,
              color: theme.colorScheme.primary,
            ),
          ),
          title: Text(l10n.exploreSearchFilterAdvancedTitle),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AutocompletePicker(
              label: l10n.exploreSearchFilterIndustry,
              controller: _industriesController,
              options: _filtersModel.industries,
              optionsTranslations: (textId) => _contentProvider.industryOptions!
                  .firstWhere((e) => e.textId == textId)
                  .translatedValue!,
              selectedOptions: _filtersModel.selectedIndustries,
            ),
            const SizedBox(height: Insets.paddingExtraLarge),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.exploreSearchFilterUserType,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                const SizedBox(height: Insets.paddingExtraSmall),
                Row(
                  children: [
                    Text(
                      l10n.exploreSearchFilterUserTypes(
                          UserType.entrepreneur.name),
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const Spacer(),
                    Radio<String>(
                      value: UserType.entrepreneur.name,
                      groupValue: _userType.name,
                      onChanged: (String? value) {
                        setState(() {
                          _userType = UserType.entrepreneur;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      l10n.exploreSearchFilterUserTypes(UserType.mentor.name),
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const Spacer(),
                    Radio<String>(
                      value: UserType.mentor.name,
                      groupValue: _userType.name,
                      onChanged: (String? value) {
                        setState(() {
                          _userType = UserType.mentor;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: Insets.paddingLarge),
            if (_userType == UserType.entrepreneur) ...[
              AutocompletePicker(
                label: l10n.exploreSearchFilterBusinessStage,
                controller: _companyStageController,
                options: _filtersModel.companyStages,
                optionsTranslations: (textId) => _contentProvider
                    .companyStageOptions!
                    .firstWhere((e) => e.textId == textId)
                    .translatedValue!,
                selectedOptions: _filtersModel.selectedStages,
              ),
              const SizedBox(height: Insets.paddingLarge),
            ],
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.exploreSearchFilterKeyword,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
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
            const SizedBox(height: Insets.paddingLarge),
            ClearApplyButtons(
              onClear: () => setState(() {
                _industriesController.clearTags();
              }),
              onApply: () {
                _filtersModel.setAdvancedFilters(
                  selectedIndustries: _industriesController.getTags?.toSet(),
                  selectedStages: _userType == UserType.entrepreneur
                      ? _companyStageController.getTags?.toSet()
                      : null,
                  selectedUserType: _userType,
                  selectedKeyword: _keywordController.text,
                );

                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
