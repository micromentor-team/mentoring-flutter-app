import 'package:widgetbook/widgetbook.dart';
import './uses_cases/basic.dart';


WidgetbookFolder searchBarFolder() {
  return WidgetbookFolder(name: 'Search Bar', widgets: [
    WidgetbookComponent(
      name: 'Search Bar',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
