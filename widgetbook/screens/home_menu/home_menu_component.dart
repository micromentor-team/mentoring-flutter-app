import 'package:widgetbook/widgetbook.dart';
import 'use_cases/home_menu.dart';

WidgetbookComponent homeMenuComponent(){
  return WidgetbookComponent(name: 'Home Menu', useCases: [
    homeMenu(),
  ]);
}