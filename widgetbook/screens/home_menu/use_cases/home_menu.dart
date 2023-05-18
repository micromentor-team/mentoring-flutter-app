import 'package:widgetbook/widgetbook.dart';
import '../home_menu_screen.dart';

WidgetbookUseCase homeMenu(){
  return WidgetbookUseCase(name: 'Home Menu', builder: (context){
    return homeMenuScreen(authToken: 'xyz', userId: '1', deviceId: 'xyz');
  });
}