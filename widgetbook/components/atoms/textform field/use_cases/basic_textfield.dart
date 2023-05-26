import 'package:flutter/src/widgets/basic.dart';
import 'package:widgetbook/widgetbook.dart';
import '../textfield_form_widget.dart';

WidgetbookUseCase basicTextField() {
  return WidgetbookUseCase(
      name: 'Basic TextField',
      builder: (context) {
        return Center(
          child:
              textFormFieldWidget(label: 'Basic TextField', obscureText: false),
        );
      });
}
