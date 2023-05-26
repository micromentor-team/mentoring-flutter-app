import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookFolder tuneIconFolder() {
  return WidgetbookFolder(name: 'Tune Icon', widgets: [
    WidgetbookComponent(
      name: 'Tune Icon',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
