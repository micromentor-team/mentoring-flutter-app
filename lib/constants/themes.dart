part of 'constants.dart';

class AppThemes {
  AppThemes._private();

  static ThemeData _baseThemeOverlay(
      ThemeData baseTheme, ColorScheme colorScheme) {
    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: colorScheme,
      bannerTheme: const MaterialBannerThemeData(
        padding: EdgeInsets.all(Insets.widgetMediumInset),
      ),
      cardTheme: const CardTheme(
        elevation: Elevations.level2,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: colorScheme.primary,
          padding: const EdgeInsets.all(Insets.widgetSmallInset),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Radii.buttonRadius)),
          ),
        ),
      ),
    );
  }

  static ThemeData light() {
    return _baseThemeOverlay(ThemeData.light(), ColorSchemes.light);
  }

  static ThemeData dark() {
    return _baseThemeOverlay(ThemeData.dark(), ColorSchemes.dark);
  }
}
