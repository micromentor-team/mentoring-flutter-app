import 'package:widgetbook/widgetbook.dart';
import './signin/sign_in_component.dart';
import './signup/sign_up_component.dart';
import './home/home_component.dart';
import './home_menu/home_menu_component.dart';
import './welcome/welcome_component.dart';
import 'chat_screen/chat_component.dart';
import 'message_screen/message_component.dart';
import 'tabscreen/tabs_component.dart';

WidgetbookCategory screensCategory() {
  return WidgetbookCategory(
    name: 'Screens',
    widgets: [
      signInComponent(),
      signUpComponent(),
      tabsComponent(),
      homeComponent(),
      homeMenuComponent(),
      welcomeComponent(),
      messageComponent(),
      chatComponent(),
    ],
  );
}
