import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constants/app_constants.dart';

class ExploreFilter extends StatelessWidget {
  const ExploreFilter({Key? key}) : super(key: key);

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
                        Text(
                          l10n.whatAreYouLookingForHelpWith,
                          style: TextStyles.quickViewProfileCardMediumEmphasis(
                              context),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          l10n.languageLocationFilter,
                          style: TextStyles.quickViewProfileCardLowEmphasis(
                              context),
                        ),
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
