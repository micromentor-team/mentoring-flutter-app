import 'package:widgetbook/widgetbook.dart';
import 'use_cases/sign_up_user.dart';

WidgetbookComponent signUpComponent() {
  return WidgetbookComponent(name: 'Sign Up', useCases: [
    signUpUser(),
  ]);
}
