import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookFolder ratingFolder() {
  return WidgetbookFolder(name: 'Rating', widgets: [
    WidgetbookComponent(
      name: 'Rating',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
