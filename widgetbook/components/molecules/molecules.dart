import 'package:widgetbook/widgetbook.dart';
import './message_button/message_button_folder.dart';
import './profile_photo/profile_photo_folder.dart';
import './rating/rating_folder.dart';

WidgetbookCategory moleculesCategory() {
  return WidgetbookCategory(
    name: 'Molecules',
    folders: [
      messageButtonFolder(),
      profileImageFolder(),
      ratingFolder(),
    ],
  );
}
