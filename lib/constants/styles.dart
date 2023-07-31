part of 'app_constants.dart';

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
}
