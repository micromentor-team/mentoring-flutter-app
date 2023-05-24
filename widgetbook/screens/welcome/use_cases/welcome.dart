import 'package:widgetbook/widgetbook.dart';
import '../welcome_screen.dart';

WidgetbookUseCase welcome() {
  return WidgetbookUseCase(
      name: 'welcome',
      builder: (context) {
        return welcomeScreen(authToken: 'xyz', userId: 'xyz', deviceId: 'xyz');
      });
}
