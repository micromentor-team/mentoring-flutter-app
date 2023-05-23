import 'package:widgetbook/widgetbook.dart';
import '../message_screen.dart';

WidgetbookUseCase message(){
  return WidgetbookUseCase(name: 'Message screen', builder: (context){
    return messageScreen(authToken: 'xyz', userId: '1', deviceId: 'xyz');
  });
}