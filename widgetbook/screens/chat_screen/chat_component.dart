import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';

WidgetbookComponent chatComponent() {
  return WidgetbookComponent(name: 'Chat Screen', useCases: [
    chat(),
  ]);
}
