import 'package:flutter/material.dart';

class LocaleInfo {
  final String name;
  final String code;

  LocaleInfo(this.name, this.code);
}

class LocaleModel extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  static final Map<Locale, LocaleInfo> _supportedLocaleToLanguage = {
    const Locale('en'): LocaleInfo("English", "en"),
    const Locale('ar'): LocaleInfo("العربية", "ar"),
    const Locale('es'): LocaleInfo("Español", "es")
  };

  void set(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  List<Locale> getSupportedLocales() {
    return List.from(_supportedLocaleToLanguage.keys);
  }

  String getCurrentLanguageName() {
    return _supportedLocaleToLanguage[_locale]!.name;
  }

  List<LocaleInfo> getOtherSupportedLanguagesInfo() {
    List<LocaleInfo> result = [];
    for (Locale key in _supportedLocaleToLanguage.keys) {
      if (key == _locale) {
        continue;
      }
      result.add(_supportedLocaleToLanguage[key]!);
    }

    return result;
  }
}
