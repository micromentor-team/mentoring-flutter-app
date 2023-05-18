import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookFolder serverErrorFolder() {
  return WidgetbookFolder(name: 'Server Error', widgets: [
    WidgetbookComponent(
      name: 'Server Error',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
