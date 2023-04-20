import 'package:widgetbook/widgetbook.dart';
import '../sign_in_screen.dart';

WidgetbookUseCase signInUser() {
  return WidgetbookUseCase(
      name: 'User',
      builder: (context) {
        return signInScreen(authToken: 'xyz', userId: 'xyz', deviceId: 'xyz');
      });
}
