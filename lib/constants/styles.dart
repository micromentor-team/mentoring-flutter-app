part of 'app_constants.dart';

class TextStyles {
  const TextStyles._private();

  static TextStyle? largeSectionHeader(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.headlineMedium!.copyWith(
      color: theme.colorScheme.primary,
    );
  }

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

  static TextStyle? sectionSubHeaderBold(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.primary,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle? sectionNote(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.inverseSurface,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle? sectionSubNote(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.inverseSurface,
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

  static TextStyle? largeTextButton(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.labelLarge!
        .copyWith(color: theme.colorScheme.onPrimary);
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

  static ButtonStyle loginButton(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Radii.buttonRadius * 2)),
      ),
    );
  }
}
