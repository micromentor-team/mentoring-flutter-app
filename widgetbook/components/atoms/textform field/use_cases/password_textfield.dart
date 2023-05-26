import 'package:flutter/src/widgets/basic.dart';
import 'package:widgetbook/widgetbook.dart';
import '../textfield_form_widget.dart';

WidgetbookUseCase passwordTextField() {
  return WidgetbookUseCase(
      name: 'Password TextField',
      builder: (context) {
        return Center(
          child:
              textFormFieldWidget(obscureText: true, label: 'Password Field'),
        );
      });
}
