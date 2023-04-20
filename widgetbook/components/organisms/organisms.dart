import 'package:widgetbook/widgetbook.dart';
import './search_container/search_container_folder.dart';
import './mentor_card/mentor_card_folder.dart';

WidgetbookCategory organismsCategory() {
  return WidgetbookCategory(
    name: 'Organisms',
    folders: [
    searchContainerFolder(),
      mentorCardFolder()
    ],
  );
}