import 'package:widgetbook/widgetbook.dart';
import 'use_cases/tabs.dart';

WidgetbookComponent tabsComponent(){
  return WidgetbookComponent(name: 'Tabs', useCases: [
    tabs(),
  ]);
}