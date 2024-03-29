import 'package:flutter/foundation.dart';
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

class ExploreFiltersScreen extends StatefulWidget {
  const ExploreFiltersScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RecommendedMentorsFilters();
}

class _RecommendedMentorsFilters extends State<ExploreFiltersScreen>
    with NavigationMixin<ExploreFiltersScreen> {
  late final TextfieldTagsController _countriesController;
  late final TextfieldTagsController _languagesController;
  late final ExploreCardFiltersModel _filtersModel;
  late final ContentProvider _contentProvider;
  Set<String> _selectedExpertises = {};

  @override
  void initState() {
    super.initState();
    _countriesController = TextfieldTagsController();
    _languagesController = TextfieldTagsController();
    _filtersModel =
        Provider.of<ExploreCardFiltersModel>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _selectedExpertises = _filtersModel.selectedExpertises;
  }

  @override
  void dispose() {
    try {
      _countriesController.dispose();
      _languagesController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    buildPageRouteScaffold(
      (scaffoldModel) => scaffoldModel.setParams(
        appBar: AppBar(
          title: Text(l10n.exploreSearchFilterTitle),
          actions: [
            IconButton(
              onPressed: () => context.pop(),
              icon: Icon(
                Icons.close,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              _Expertise(
                expertiseIds: _filtersModel.expertises,
                selectedExpertises: _selectedExpertises,
                expertiseTranslate: _contentProvider.translateExpertise,
              ),
              const SizedBox(height: Insets.paddingLarge),
              AutocompletePicker(
                label: l10n.exploreSearchFilterHeadingLanguage,
                controller: _languagesController,
                options: _filtersModel.languages,
                optionsTranslations: (id) =>
                    _contentProvider.translateLanguages(id) ?? id,
                selectedOptions: _filtersModel.selectedLanguages,
              ),
              const SizedBox(height: Insets.paddingMedium),
              AutocompletePicker(
                label: l10n.exploreSearchFilterHeadingCountries,
                controller: _countriesController,
                options: _filtersModel.countries,
                optionsTranslations: (id) =>
                    _contentProvider.translateCountry(id) ?? id,
                selectedOptions: _filtersModel.selectedCountries,
              ),
            ]),
            const SizedBox(height: Insets.paddingLarge),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                icon: const Icon(Icons.tune),
                label: Text(l10n.exploreSearchFilterAdvancedFilters),
                onPressed: () =>
                    context.push(Routes.exploreFiltersAdvanced.path),
              ),
            ),
            const SizedBox(height: Insets.paddingLarge),
            ClearApplyButtons(
              onClear: () => setState(() {
                _countriesController.clearTags();
                _languagesController.clearTags();
                _selectedExpertises.clear();
              }),
              onApply: () {
                _filtersModel.setFilters(
                  selectedCountries: _countriesController.getTags?.toSet(),
                  selectedLanguages: _languagesController.getTags?.toSet(),
                  selectedExpertises: _selectedExpertises,
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

class _Expertise extends StatefulWidget {
  final List<String> expertiseIds;
  final Set<String> selectedExpertises;
  final String? Function(String id) expertiseTranslate;

  const _Expertise({
    required this.expertiseIds,
    required this.selectedExpertises,
    required this.expertiseTranslate,
  });

  @override
  State<StatefulWidget> createState() => _ExpertiseState();
}

class _ExpertiseState extends State<_Expertise> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    var expertiseButtons = [];
    for (int i = 0; i < widget.expertiseIds.length; i++) {
      var expertise = widget.expertiseIds[i];
      var isSelected = widget.selectedExpertises.contains(expertise);

      expertiseButtons.add(OutlinedButton(
        onPressed: () {
          setState(() {
            if (isSelected) {
              widget.selectedExpertises.remove(expertise);
            } else {
              widget.selectedExpertises.add(expertise);
            }
          });
        },
        style: ButtonStyles.primaryRoundedRectangleButton(context).copyWith(
          backgroundColor: MaterialStatePropertyAll((isSelected)
              ? theme.colorScheme.onInverseSurface
              : theme.colorScheme.surface),
        ),
        child: Text(widget.expertiseTranslate(expertise) ?? expertise,
            style: TextStyle(color: theme.colorScheme.primary)),
      ));
      if (i != widget.expertiseIds.length - 1) {
        expertiseButtons.add(const SizedBox(width: Insets.paddingExtraSmall));
      }
    }

    bool allExpertisesSelected =
        setEquals(widget.selectedExpertises, widget.expertiseIds.toSet());

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.exploreSearchFilterExpertise,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
              const SizedBox(height: Insets.paddingExtraSmall),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (allExpertisesSelected) {
                              widget.selectedExpertises.clear();
                            } else {
                              widget.selectedExpertises.clear();
                              widget.selectedExpertises
                                  .addAll(widget.expertiseIds);
                            }
                          });
                        },
                        style:
                            ButtonStyles.primaryRoundedRectangleButton(context)
                                .copyWith(
                          backgroundColor: MaterialStatePropertyAll(
                            (allExpertisesSelected)
                                ? theme.colorScheme.onInverseSurface
                                : theme.colorScheme.surface,
                          ),
                        ),
                        child: Text(l10n.exploreSearchFilterAll,
                            style: TextStyle(color: theme.colorScheme.primary)),
                      ),
                      const VerticalDivider(),
                      ...expertiseButtons,
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Insets.paddingSmall),
            ],
          ),
        ),
      ],
    );
  }
}
