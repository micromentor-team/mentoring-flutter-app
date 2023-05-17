import 'package:widgetbook/widgetbook.dart';
import './use_cases/welcome.dart';

WidgetbookComponent welcomeComponent(){
  return WidgetbookComponent(name: 'Welcome', useCases: [
    welcome(),
  ]);
}