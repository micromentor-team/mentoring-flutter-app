import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookFolder profileImageFolder() {
  return WidgetbookFolder(name: 'Profile Image', widgets: [
    WidgetbookComponent(
      name: 'Profile Image',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
