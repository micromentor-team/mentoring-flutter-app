import 'package:widgetbook/widgetbook.dart';
import 'use_cases/message.dart';

WidgetbookComponent messageComponent(){
  return WidgetbookComponent(name: 'Messages Screen', useCases: [
    message(),
  ]);
}