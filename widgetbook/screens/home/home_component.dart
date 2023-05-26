import 'package:widgetbook/widgetbook.dart';
import './use_cases/home.dart';

WidgetbookComponent homeComponent() {
  return WidgetbookComponent(name: 'Home', useCases: [
    home(),
  ]);
}
