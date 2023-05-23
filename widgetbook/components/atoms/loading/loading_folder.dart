import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';


WidgetbookFolder loadingFolder() {
  return WidgetbookFolder(name: 'Loading', widgets: [
    WidgetbookComponent(
      name: 'Loading',
      useCases: [
      basic(),
      ],
    ),
  ]);
}
