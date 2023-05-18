import 'package:widgetbook/widgetbook.dart';
import './use_cases/basic.dart';

WidgetbookFolder serverErrorFolder() {
  return WidgetbookFolder(name: 'server error', widgets: [
    WidgetbookComponent(
      name: 'server error',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
