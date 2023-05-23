import 'package:widgetbook/widgetbook.dart';
import '../tabs_screen.dart';

WidgetbookUseCase tabs(){
  return WidgetbookUseCase(name: 'tabs', builder: (context){
    return tabsScreen(authToken: 'xyz', userId: 'xyz', deviceId: 'xyz');
  });
}