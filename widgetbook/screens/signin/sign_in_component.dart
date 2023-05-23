import 'package:widgetbook/widgetbook.dart';
import 'use_cases/sign_in_user.dart';

WidgetbookComponent signInComponent(){
  return WidgetbookComponent(name: 'Sign In', useCases: [
    signInUser(),
  ]);
}