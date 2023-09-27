import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/appbar_factory.dart';
import 'package:mm_flutter_app/widgets/atoms/clear_apply_buttons.dart';
import 'package:mm_flutter_app/widgets/molecules/autocomplete_picker.dart';
import 'package:provider/provider.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../utilities/navigation_mixin.dart';

class RecommendedMentorsFilters extends StatefulWidget {
  const RecommendedMentorsFilters({super.key});

  @override
  State<StatefulWidget> createState() => _RecommendedMentorsFilters();
}

class _RecommendedMentorsFilters extends State<RecommendedMentorsFilters>
    with NavigationMixin<RecommendedMentorsFilters> {
  late final TextfieldTagsController _countriesController;
  late final TextfieldTagsController _languagesController;
  late final ExploreCardFiltersModel _filtersModel;
  late final ContentProvider _contentProvider;
  Set<String> _selectedSkills = {};

  @override
  void initState() {
    super.initState();
    _countriesController = TextfieldTagsController();
    _languagesController = TextfieldTagsController();
    _filtersModel =
        Provider.of<ExploreCardFiltersModel>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _selectedSkills = _filtersModel.selectedSkills;
  }

  @override
  void dispose() {
    _countriesController.dispose();
    _languagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setParams(
        appBar: AppBarFactory.createTitleOnlyAppBar(
          title: AppLocalizations.of(context)!.exploreSearchFilterTitle,
        ),
      );
    });
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: Column(
        children: [
          Column(children: [
            _Expertise(
              skills: _filtersModel.skills,
              selectedSkills: _selectedSkills,
              skillTranslate: _contentProvider.translateExpertise,
            ),
            AutocompletePicker(
              fieldName: l10n.exploreSearchFilterHeadingLanguage,
              controller: _languagesController,
              options: _filtersModel.languages,
              optionsTranslations: (id) =>
                  _contentProvider.translateLanguages(id) ?? id,
              selectedOptions: _filtersModel.selectedLanguages,
            ),
            AutocompletePicker(
              fieldName: l10n.exploreSearchFilterHeadingCountries,
              controller: _countriesController,
              options: _filtersModel.countries,
              optionsTranslations: (id) =>
                  _contentProvider.translateCountry(id) ?? id,
              selectedOptions: _filtersModel.selectedCountries,
            ),
          ]),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              icon: const Icon(Icons.tune),
              label: Text(l10n.exploreSearchFilterAdvancedFilters),
              onPressed: () => context.push(Routes.exploreFiltersAdvanced.path),
            ),
          ),
          ClearApplyButtons(
            onClear: () => setState(() {
              _countriesController.clearTags();
              _languagesController.clearTags();
              _selectedSkills.clear();
            }),
            onApply: () {
              _filtersModel.setFilters(
                selectedCountries: _countriesController.getTags?.toSet(),
                selectedLanguages: _languagesController.getTags?.toSet(),
                selectedSkills: _selectedSkills,
              );

              context.pop();
            },
          ),
        ],
      ),
    );
  }
}

class _Expertise extends StatefulWidget {
  final List<String> skills;
  final Set<String> selectedSkills;
  final String? Function(String id) skillTranslate;

  const _Expertise({
    required this.skills,
    required this.selectedSkills,
    required this.skillTranslate,
  });

  @override
  State<StatefulWidget> createState() => _ExpertiseState();
}

class _ExpertiseState extends State<_Expertise> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    var skillButtons = [];
    for (int i = 0; i < widget.skills.length; i++) {
      var skill = widget.skills[i];
      var isSelected = widget.selectedSkills.contains(skill);

      skillButtons.add(OutlinedButton(
        onPressed: () {
          setState(() {
            if (isSelected) {
              widget.selectedSkills.remove(skill);
            } else {
              widget.selectedSkills.add(skill);
            }
          });
        },
        style: ButtonStyles.primaryRoundedRectangleButton(context).copyWith(
          backgroundColor: MaterialStatePropertyAll((isSelected)
              ? theme.colorScheme.onInverseSurface
              : theme.colorScheme.surface),
        ),
        child: Text(widget.skillTranslate(skill) ?? skill,
            style: TextStyle(color: theme.colorScheme.primary)),
      ));
      if (i != widget.skills.length - 1) {
        skillButtons.add(const SizedBox(width: Insets.paddingExtraSmall));
      }
    }

    bool allSkillsSelected =
        setEquals(widget.selectedSkills, widget.skills.toSet());

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.exploreSearchFilterExpertise),
              const SizedBox(height: Insets.paddingExtraSmall),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (allSkillsSelected) {
                              widget.selectedSkills.clear();
                            } else {
                              widget.selectedSkills.clear();
                              widget.selectedSkills.addAll(widget.skills);
                            }
                          });
                        },
                        style:
                            ButtonStyles.primaryRoundedRectangleButton(context)
                                .copyWith(
                          backgroundColor: MaterialStatePropertyAll(
                            (allSkillsSelected)
                                ? theme.colorScheme.onInverseSurface
                                : theme.colorScheme.surface,
                          ),
                        ),
                        child: Text(l10n.exploreSearchFilterAll,
                            style: TextStyle(color: theme.colorScheme.primary)),
                      ),
                      const VerticalDivider(),
                      ...skillButtons,
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
