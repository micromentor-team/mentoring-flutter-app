import 'package:flutter/src/widgets/basic.dart';
import 'package:widgetbook/widgetbook.dart';
import '../message_button_widget.dart';

WidgetbookUseCase basic() {
  return WidgetbookUseCase(
      name: 'Basic',
      builder: (context) {
        return Center(child: messageButtonWidget(),);
      });
}
