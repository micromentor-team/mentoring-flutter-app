import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:provider/provider.dart';

class ExploreFilter extends StatelessWidget {
  final UserType userType;

  const ExploreFilter({
    Key? key,
    required this.userType,
  }) : super(key: key);

  String? _helpText(AppLocalizations l10n) {
    switch (userType) {
      case UserType.entrepreneur:
        return l10n.whatAreYouLookingForHelpWith;
      case UserType.mentor:
        return l10n.whatAreYouLookingToHelpWith;
      default:
        return null;
    }
  }

  Text _createHelpTextHeader(AppLocalizations l10n, BuildContext context) {
    return Text(
      _helpText(l10n)!,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Text _createInsertLanguageLocationSubHeader(
      AppLocalizations l10n, BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Text(
      l10n.languageLocationFilter,
      style: theme.textTheme.labelSmall?.copyWith(
        color: theme.colorScheme.secondary,
      ),
    );
  }

  Text _createExpertisesTextHeader(BuildContext context, Set<String>? expertises) {
    final contentProvider = Provider.of<ContentProvider>(context);
    var expertisesText = joinFirstThree(expertises
        ?.map((s) => contentProvider.translateExpertise(s) ?? s)
        .toList());
    return Text(
      expertisesText,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Text _createLanguageLocationSubHeader(
    BuildContext context,
    Set<String>? countries,
    Set<String>? languages,
  ) {
    final ThemeData theme = Theme.of(context);
    //handling scenarios where countries and languages may be null
    Set<String> countryLanguageText = {};
    final contentProvider = Provider.of<ContentProvider>(context);
    if (countries != null) {
      countryLanguageText.addAll(
          countries.map((c) => contentProvider.translateCountry(c) ?? c));
    }
    if (languages != null) {
      countryLanguageText.addAll(
          languages.map((l) => contentProvider.translateLanguages(l) ?? l));
    }
    var joinedCountryLanguageText =
        joinFirstThree(countryLanguageText.toList());
    //TO-DO(guptarupal): is there a way to optimize this. What is there are too many countries? do we not show languages then?"

    return Text(
      joinedCountryLanguageText,
      style: theme.textTheme.labelSmall?.copyWith(
        color: theme.colorScheme.secondary,
      ),
    );
  }

  String joinFirstThree(List<String>? strings) {
    List<String> firstThreeElements = strings!.take(3).toList();
    return firstThreeElements.join(" • ");
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.fromLTRB((Insets.paddingExtraSmall),
          Insets.paddingSmall, Insets.paddingExtraSmall, Insets.paddingSmall),
      child: SizedBox(
        height: 80.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.surfaceVariant,
              width: Dimensions.highlightBorderWidth,
            ),
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusMedium),
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                        (Insets.paddingMedium), 0, (Insets.paddingMedium), 0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Color(theme.colorScheme.onSurfaceVariant.value),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Consumer<ExploreCardFiltersModel>(
                    builder: (context, filters, _) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                if (!filters.userFiltersSelected ||
                                    (filters.userFiltersSelected &&
                                        !filters.expertiseFilterSelected))
                                  _createHelpTextHeader(l10n, context),
                                if (filters.userFiltersSelected &&
                                    filters.expertiseFilterSelected)
                                  _createExpertisesTextHeader(
                                      context, filters.selectedExpertises),
                              ],
                            ),
                            Row(
                              children: [
                                if (!filters.userFiltersSelected ||
                                    (filters.userFiltersSelected &&
                                        !filters.languageFilterSelected &&
                                        !filters.countryFilterSelected))
                                  _createInsertLanguageLocationSubHeader(
                                      l10n, context),
                                if (filters.userFiltersSelected)
                                  _createLanguageLocationSubHeader(
                                      context,
                                      filters.selectedCountries,
                                      filters.selectedLanguages),
                              ],
                            ),
                          ],
                        )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                        (Insets.paddingMedium), 0, (Insets.paddingMedium), 0),
                    child: IconButton(
                      onPressed: () {
                        context.push(Routes.exploreFilters.path);
                      },
                      icon: Icon(
                        Icons.tune,
                        color: Color(theme.colorScheme.onSurfaceVariant.value),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
