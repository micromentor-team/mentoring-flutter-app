import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic_textfield.dart';
import 'use_cases/password_textfield.dart';

WidgetbookFolder textFieldFormFolder() {
  return WidgetbookFolder(name: 'TextField', widgets: [
    WidgetbookComponent(
      name: 'TextField',
      useCases: [
        basicTextField(),
        passwordTextField(),
      ],
    ),
  ]);
}
