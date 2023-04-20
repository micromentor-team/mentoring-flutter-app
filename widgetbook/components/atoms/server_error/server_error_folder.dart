import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/atoms/server_error.dart';
import './use_cases/basic.dart';

WidgetbookFolder serverErrorFolder() {
  return WidgetbookFolder(name: 'server error', widgets: [
    WidgetbookComponent(
      name: 'server error',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
