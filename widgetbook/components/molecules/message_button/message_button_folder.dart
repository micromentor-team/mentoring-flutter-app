import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookFolder messageButtonFolder() {
  return WidgetbookFolder(name: 'Message Button', widgets: [
    WidgetbookComponent(
      name: 'Message Button',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
