import 'package:widgetbook/widgetbook.dart';
import 'use_cases/basic.dart';


WidgetbookFolder mentorCardFolder() {
  return WidgetbookFolder(name: 'Mentor Card', widgets: [
    WidgetbookComponent(
      name: 'Mentor Card',
      useCases: [
        basic(),
      ],
    ),
  ]);
}
