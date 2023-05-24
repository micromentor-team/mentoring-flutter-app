import 'package:widgetbook/widgetbook.dart';
import '../chat_screen.dart';

WidgetbookUseCase chat() {
  return WidgetbookUseCase(
      name: 'Chat Screen',
      builder: (context) {
        return chatScreen();
      });
}
