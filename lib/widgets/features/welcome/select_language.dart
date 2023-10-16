import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/locale_model.dart';
import 'package:provider/provider.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final LocaleModel localeModel = Provider.of<LocaleModel>(context);

    List<SingleChildRenderObjectWidget> otherLanguageButtons =
        List<SingleChildRenderObjectWidget>.from(
      localeModel.getOtherSupportedLanguagesInfo().map(
        (localeInfo) {
          return Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: TextButton(
                style:
                    ButtonStyles.secondaryRoundedRectangleButtonLarge(context),
                onPressed: () {
                  localeModel.set(Locale(localeInfo.code));
                },
                child: Text(
                  localeInfo.name,
                  textAlign: TextAlign.center,
                ),
              ));
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, size: 16.0),
        ),
        title: Text(l10n.languageSelectBack,
            style: theme.textTheme.labelLarge
                ?.copyWith(color: theme.colorScheme.primary)),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
                const Center(
                  child: SizedBox(
                    height: Insets.paddingLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Text(
                    l10n.languageSelectTitle,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Text(
                    l10n.languageSelectCurrent,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: TextButton(
                    style: ButtonStyles.primaryRoundedRectangleButtonLarge(
                        context),
                    onPressed: () {},
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          localeModel.getCurrentLanguageName(),
                        ),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.check, size: 16.0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Text(
                    l10n.languageSelectOthers,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
              ] +
              otherLanguageButtons,
        ),
      ),
    );
  }
}
