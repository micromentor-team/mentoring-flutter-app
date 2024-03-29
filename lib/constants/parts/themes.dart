part of '../constants.dart';

class AppThemes {
  AppThemes._private();

  static ThemeData _baseThemeOverlay(
      ThemeData baseTheme, ColorScheme colorScheme) {
    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: colorScheme,
      typography: Typography.material2021(),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: colorScheme.primary),
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
