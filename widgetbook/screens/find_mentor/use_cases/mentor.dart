import 'package:widgetbook/widgetbook.dart';
import '../find_mentor_screen.dart';

WidgetbookUseCase mentor(){
  return WidgetbookUseCase(name: 'Find Mentor', builder: (context){
    return findMentorScreen();
  });
}