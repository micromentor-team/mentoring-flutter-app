part of 'app_constants.dart';

class LayoutBreakpoints {
  const LayoutBreakpoints._private();
  // Window class by width
  static const double compactWidthMax = 600.0;
  static const double mediumWidthMin = compactWidthMax;
  static const double mediumWidthMax = expandedWidthMin;
  static const double expandedWidthMin = 840.0;
  // Window class by height
  static const double compactHeightMax = 480.0;
  static const double mediumHeightMin = compactHeightMax;
  static const double mediumHeightMax = expandedHeightMin;
  static const double expandedHeightMin = 900.0;
}

class AppEdgeInsets {
  const AppEdgeInsets._private();
  static const double paddingCompact = 16.0;
  static const double paddingMedium = 24.0;
  static const double paddingExpanded = 24.0;
}

class Insets {
  const Insets._private();
  static const double paddingExtraSmall = 4.0;
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingExtraLarge = 32.0;
}

class Radii {
  Radii._private();
  static const double avatarRadiusSmall = 24.0;
  static const double avatarRadiusMedium = 40.0;
  static const double avatarRadiusLarge = 48.0;
  static const double roundedRectRadiusSmall = 8.0;
  static const double roundedRectRadiusMedium = 12.0;
  static const double roundedRectRadiusLarge = 16.0;
}

class Elevations {
  Elevations._private();
  static const double level0 = 0.0;
  static const double level1 = 1.0;
  static const double level2 = 3.0;
  static const double level3 = 6.0;
  static const double level4 = 8.0;
  static const double level5 = 12.0;
}

class Dimensions {
  Dimensions._private();
  static const double drawerHeaderHeight = 64.0;
  static const double highlightBorderWidth = 2.0;

  static const Size bigButtonSize = Size(80.0, 48.0);
  static const Size imageTile = Size(88.0, 168.0);
  static const Size imageTileRectangularImage = Size(88.0, 72.0);
}
