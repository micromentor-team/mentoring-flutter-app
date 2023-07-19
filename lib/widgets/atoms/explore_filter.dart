import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constants/app_constants.dart';

class ExploreFilter extends StatelessWidget {
  final UserType userType;
  final bool userFiltersSelected;
  final List<String?>? skills;
  final List<String?>? languages;
  final List<String?>? countries;

  const ExploreFilter({
    Key? key,
    required this.userType,
    required this.userFiltersSelected,
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

  Text _createInsertLanguageLocationSubheader(
      AppLocalizations l10n, BuildContext context) {
    return Text(
      l10n.languageLocationFilter,
      style: TextStyles.quickViewProfileCardLowEmphasis(context),
    );
  }

  Text _createSkillsTextHeader(
      AppLocalizations l10n, BuildContext context, List<String?>? skills) {
    var skillsText = joinFirstThree(skills);
    return Text(
      skillsText,
      style: TextStyles.quickViewProfileCardMediumEmphasis(context),
    );
  }

  Text _createLanguageLocationSubHeader(
      AppLocalizations l10n,
      BuildContext context,
      List<String?>? countries,
      List<String?>? languages) {
    var countryLanguageText = joinFirstThree(countries! + languages!, l10n);
    //TO-DO(guptarupal): is there a way to optimize this. What is there are too many countries? do we not show languages then?"

    return Text(
      countryLanguageText,
      style: TextStyles.quickViewProfileCardLowEmphasis(context),
    );
  }

  String joinFirstThree(List<String?>? strings, AppLocalizations l10n) {
    int count = strings!.length < 3 ? strings.length : 3;
    List<String> firstThreeElements = [];
    for (int i = 0; i < count; i++) {
      firstThreeElements.add(strings[i]!);
    }
    return firstThreeElements.join(" • ");
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
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
                        if (userFiltersSelected == false)
                          _createHelpTextHeader(l10n, context),
                        if (userFiltersSelected)
                          _createSkillsTextHeader(l10n, context, skills),
                      ],
                    ),
                    Row(
                      children: [
                        if (userFiltersSelected == false)
                          _createInsertLanguageLocationSubheader(l10n, context),
                        if (userFiltersSelected == true)
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
