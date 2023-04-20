import 'package:widgetbook/widgetbook.dart';
import './signin/sign_in_component.dart';
import './signup/sign_up_component.dart';
import './home/home_component.dart';
import './home_menu/home_menu_component.dart';
import './welcome/welcome_component.dart';
import './find_mentor/find_mentor_component.dart';

WidgetbookCategory screensCategory() {
  return WidgetbookCategory(
    name: 'Screens',
    widgets: [
      signInComponent(),
      signUpComponent(),
      homeComponent(),
      homeMenuComponent(),
      welcomeComponent(),
      findMentorcomponent()
    ],
  );
}
