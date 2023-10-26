part of '../constants.dart';

class ButtonStyles {
  ButtonStyles._private();

  static ButtonStyle primaryRoundedRectangleButton(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(Insets.paddingSmall),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall * 2),
      ),
    );
  }

  static ButtonStyle secondaryRoundedRectangleButton(BuildContext context) {
    return ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ));
  }

  static ButtonStyle secondaryRoundedRectangleButtonLarge(
      BuildContext context) {
    return ElevatedButton.styleFrom(
        minimumSize: const Size(288.0, 48.0),
        maximumSize: const Size(288.0, 48.0),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ));
  }

  static ButtonStyle primaryRoundedRectangleButtonLarge(BuildContext context) {
    return ElevatedButton.styleFrom(
        minimumSize: const Size(288.0, 48.0),
        maximumSize: const Size(288.0, 48.0),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ));
  }
}
