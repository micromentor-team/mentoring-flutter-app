part of 'app_constants.dart';

class ButtonStyles {
  ButtonStyles._private();

  static ButtonStyle primaryRoundedRectangleButton(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Radii.buttonRadius * 2),
      ),
    );
  }

  static ButtonStyle secondaryRoundedRectangleButton(BuildContext context) {
    return ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.buttonRadius),
        ));
  }
}
