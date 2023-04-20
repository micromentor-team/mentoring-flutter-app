import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';


WidgetbookFolder loadingFolder() {
  return WidgetbookFolder(name: 'loading', widgets: [
    WidgetbookComponent(
      name: 'loading',
      useCases: [
      basic(),
      ],
    ),
  ]);
}
