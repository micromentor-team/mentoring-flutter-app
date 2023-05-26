import 'package:flutter/src/widgets/basic.dart';
import 'package:widgetbook/widgetbook.dart';
import '../mentor_card_widget.dart';

WidgetbookUseCase basic() {
  return WidgetbookUseCase(
      name: 'Basic',
      builder: (context) {
        return Center(
          child: mentorCardWidget(),
        );
      });
}
