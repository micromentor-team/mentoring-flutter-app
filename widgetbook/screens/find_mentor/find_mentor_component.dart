import 'package:widgetbook/widgetbook.dart';
import './use_cases/mentor.dart';

WidgetbookComponent findMentorcomponent(){
  return WidgetbookComponent(name: 'Find Mentor', useCases: [
    mentor(),
  ]);
}