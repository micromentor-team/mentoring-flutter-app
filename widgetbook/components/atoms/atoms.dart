import 'package:widgetbook/widgetbook.dart';
import 'loading/loading_folder.dart';
import 'server_error/server_error_folder.dart';
import 'textform field/textfield_form_folder.dart';
import 'searchbar/searchbar_folder.dart';
import 'tune_icon/tune_icon_folder.dart';

WidgetbookCategory atomCategory() {
  return WidgetbookCategory(
    name: 'Atoms',
    folders: [
      loadingFolder(),
      serverErrorFolder(),
      textFieldFormFolder(),
      searchBarFolder(),
      tuneIconFolder(),
    ],
  );
}