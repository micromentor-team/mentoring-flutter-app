part of 'app_constants.dart';

class Components {
  const Components._private();
  static const Divider resourceListItemDivider =
      Divider(thickness: 1, height: 0);
  static const Divider indentedDivider = Divider(
    thickness: 1,
    height: 0,
    indent: Insets.widgetSmallInset,
    endIndent: Insets.widgetSmallInset,
  );
  static const Divider indentedSubDivider = Divider(
    thickness: 1,
    height: 0,
    indent: Insets.widgetMediumInset,
    endIndent: Insets.widgetMediumInset,
  );
}
