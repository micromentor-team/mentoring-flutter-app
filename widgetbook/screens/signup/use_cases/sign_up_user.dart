import 'package:widgetbook/widgetbook.dart';
import '../sign_up_screen.dart';

WidgetbookUseCase signUpUser() {
  return WidgetbookUseCase(
      name: 'User',
      builder: (context) {
        return signUpScreen(authToken: 'xyz', userId: 'xyz', deviceId: 'xyz');
      });
}
