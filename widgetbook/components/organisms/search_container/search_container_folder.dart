import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';


WidgetbookFolder searchContainerFolder() {
  return WidgetbookFolder(name: 'Search Container', widgets: [
    WidgetbookComponent(
      name: 'Search Container',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
