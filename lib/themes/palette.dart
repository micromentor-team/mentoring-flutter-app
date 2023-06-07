import 'package:flutter/material.dart';
import 'dart:math';

// https://materialpalettes.com/
// https://maketintsandshades.com/#fda500
// https://github.com/edelstone/tints-and-shades#calculation-method

@immutable
// 🎨  Defines our global common ChannelTime colors
class Palette {
  static const Color kLogoColor = Color(0xFF048CFF);
  static const Color kDarkAppBarColor = Color(0xFF404040);
  static const Color kBlueColor = Color(0xFF048CFF);
  static const Color kErrorColor = Color(0xFFfd2600);
  static const Color kWarningColor = Color(0xFFd7fd00);
  static const Color kSuccessColor = Color(0xFF59fd00);
  static const Color kTertiaryColor = Color(0xFF00fda4);
  static const Color kDangerColor = kErrorColor;
  static const Color kTextHighEmphasis = Color(0xDD000000);
  static const Color kTextMediumEmphasis = Color(0x99000000);
  static const Color kTextDisabled = Color(0x62000000);

  const Palette();
}

//  ✨ 🪄  Where a MaterialColor is required, create an accurate swatch of shades
//  with generateMaterialColor(Color color).
//
//  By generating a swatch based on Color, we get accurate
//  10% incremental shade values of that tone - i.e. type MaterialColor.
//
//  === THIS IS ALWAYS BETTER THAN PROVIDING A `primaryColor` WHEN YOU HAVE THE OPTION ===
//
//  📌  With this, any hex value can be used to create a true (read ACCURATE) custom MaterialColor.

// 🔎 Opacity : Alpha seed
// 100% : FF
// 95% : F2
// 90% : E6
// 85% : D9
// 80% : CC
// 75% : BF
// 70% : B3
// 65% : A6
// 60% : 99
// 55% : 8C
// 50% : 80
// 45% : 73
// 40% : 66
// 35% : 59
// 30% : 4D
// 25% : 40
// 20% : 33
// 15% : 26
// 10% : 1A
// 5% : 0D
// 0% : 00

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

final ColorScheme kLightPalette = ColorScheme(
  brightness: Brightness.light,
  background: Colors.grey.shade100,
  error: Palette.kErrorColor,
  onBackground: Colors.grey,
  onError: Colors.white,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.grey.shade800,
  primary: Palette.kLogoColor,
  // primaryVariant: const Color(0xFFca8400), // 30% darker than kLogoColor
  secondary: Palette.kBlueColor,
  // secondaryVariant: const Color(0xFF0047ca), // 30% darker than kBlueColor
  surface: Colors.white,
);

final ColorScheme kDarkPalette = ColorScheme(
  brightness: Brightness.dark,
  background: Colors.grey.shade500,
  error: Palette.kErrorColor,
  onBackground: Colors.white,
  onError: Colors.white,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  primary: Palette.kLogoColor,
  // primaryVariant: const Color(0xFFca8400), // 30% darker than kLogoColor
  secondary: Palette.kBlueColor,
  // secondaryVariant: const Color(0xFF0047ca), // 30% darker than kBlueColor
  surface: Colors.white,
);
