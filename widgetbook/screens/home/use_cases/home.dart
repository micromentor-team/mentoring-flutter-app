import 'package:widgetbook/widgetbook.dart';
import '../home_screen.dart';

WidgetbookUseCase home(){
  return WidgetbookUseCase(name: 'home', builder: (context){
    return homeScreen(authToken: 'xyz', userId: 'xyz', deviceId: 'xyz');
  });
}