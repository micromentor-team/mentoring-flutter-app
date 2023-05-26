import 'package:flutter/src/widgets/basic.dart';
import 'package:widgetbook/widgetbook.dart';
import '../profile_photo_widget.dart';

WidgetbookUseCase basic() {
  return WidgetbookUseCase(
      name: 'Basic',
      builder: (context) {
        return Center(
          child: profileImageWidget(),
        );
      });
}
