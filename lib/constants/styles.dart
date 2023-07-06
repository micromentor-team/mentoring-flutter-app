part of 'app_constants.dart';

class TextStyles {
  const TextStyles._private();

  static TextStyle? sectionHeader(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.titleLarge!.copyWith(
      color: theme.colorScheme.primary,
    );
  }

  static TextStyle? sectionSubHeader(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.primary,
    );
  }

  static TextStyle? cardTitle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(fontWeight: FontWeight.w800);
  }

  static TextStyle? cardSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium;
  }

  static TextStyle? resourceTitle(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall;
  }

  static TextStyle? mentorCardTitle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(fontWeight: FontWeight.w800);
  }

  static TextStyle? mentorCardSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium;
  }

  static TextStyle? profileHeader(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall;
  }

  static TextStyle? smallTextButton(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.labelMedium!
        .copyWith(color: theme.colorScheme.onPrimary);
  }

  static TextStyle? bannerAction(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium;
  }
}

class ButtonStyles {
  ButtonStyles._private();
  static ButtonStyle filledButton(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Radii.buttonRadius)),
      ),
    );
  }

  static ButtonStyle homePageButton(BuildContext context) {
    return ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Radii.buttonRadius),
    ));
  }
}

// class ChipStyles{
//   ChipStyles._private();
//   static ChipStyles filledChip(BuildContext context) {
//     return Chip.backgroundColor: Theme.of(context).colorScheme.primary,;
//   }
//
// }
