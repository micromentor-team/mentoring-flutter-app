import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constants/app_constants.dart';

class ExploreFilter extends StatelessWidget {
  final UserType userType;
  final List<String>? skills;
  final List<String>? languages;
  final List<String>? countries;

  const ExploreFilter({
    Key? key,
    required this.userType,
    this.skills,
    this.languages,
    this.countries,
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
      style: TextStyles.quickViewProfileCardMediumEmphasis(context),
    );
  }

  Text _createInsertLanguageLocationSubHeader(
      AppLocalizations l10n, BuildContext context) {
    return Text(
      l10n.languageLocationFilter,
      style: TextStyles.quickViewProfileCardLowEmphasis(context),
    );
  }

  Text _createSkillsTextHeader(
      AppLocalizations l10n, BuildContext context, List<String>? skills) {
    var skillsText = joinFirstThree(skills);
    return Text(
      skillsText,
      style: TextStyles.quickViewProfileCardMediumEmphasis(context),
    );
  }

  Text _createLanguageLocationSubHeader(AppLocalizations l10n,
      BuildContext context, List<String>? countries, List<String>? languages) {
    //handling scenarios where countries and languages may be null
    List<String> countryLanguageText = [];
    if (countries != null) {
      countryLanguageText += countries;
    }
    if (languages != null) {
      countryLanguageText += languages;
    }
    var joinedCountryLanguageText = joinFirstThree(countryLanguageText);
    //TO-DO(guptarupal): is there a way to optimize this. What is there are too many countries? do we not show languages then?"

    return Text(
      joinedCountryLanguageText,
      style: TextStyles.quickViewProfileCardLowEmphasis(context),
    );
  }

  String joinFirstThree(List<String>? strings) {
    List<String> firstThreeElements = strings!.take(3).toList();
    return firstThreeElements.join(" • ");
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    //logic handling the null scenarios of the lists
    bool userFiltersSelected = false;
    bool skillFilterSelected = false;
    bool languageFilterSelected = false;
    bool countryFilterSelected = false;

    if (skills != null || languages != null || countries != null) {
      userFiltersSelected = true;
    }
    if (skills != null) {
      skillFilterSelected = true;
    }
    if (languages != null) {
      languageFilterSelected = true;
    }
    if (countries != null) {
      countryFilterSelected = true;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(
          (Insets.widgetSmallestInset),
          Insets.widgetSmallInset,
          Insets.widgetSmallestInset,
          Insets.widgetSmallInset),
      child: SizedBox(
        height: Dimensions.exploreFilterSizedBoxHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: Dimensions.highlightBorderWidth,
            ),
            borderRadius: BorderRadius.circular(Radii.roundedRectRadius),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB((Insets.widgetLargeInset), 0,
                        (Insets.widgetMediumInset), 0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        if (!userFiltersSelected ||
                            (userFiltersSelected && !skillFilterSelected))
                          _createHelpTextHeader(l10n, context),
                        if (userFiltersSelected && skillFilterSelected)
                          _createSkillsTextHeader(l10n, context, skills),
                      ],
                    ),
                    Row(
                      children: [
                        if (!userFiltersSelected ||
                            (userFiltersSelected &&
                                !languageFilterSelected &&
                                !countryFilterSelected))
                          _createInsertLanguageLocationSubHeader(l10n, context),
                        if (userFiltersSelected)
                          _createLanguageLocationSubHeader(
                              l10n, context, countries, languages),
                      ],
                    ),
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB((Insets.widgetLargeInset), 0,
                        (Insets.widgetMediumInset), 0),
                    child: Icon(Icons.tune),
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
