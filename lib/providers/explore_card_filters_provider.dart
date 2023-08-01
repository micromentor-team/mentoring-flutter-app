import 'package:flutter/material.dart';

class ExploreCardFiltersProvider extends ChangeNotifier {
  static const List<String> countries = ['USA'];
  static const List<String> languages = ['English', 'Urdu', 'Hindi'];
  static const List<String> skills = ['Marketing', 'Operations', 'StartingUp'];

  Set<String> _selectedCountries = {};
  Set<String> _selectedLanguages = {};
  Set<String> _selectedSkills = {};

  Set<String> get selectedCountries => _selectedCountries;
  Set<String> get selectedLanguages => _selectedLanguages;
  Set<String> get selectedSkills => _selectedSkills;

  bool get countryFilterSelected => _selectedCountries.isNotEmpty;
  bool get languageFilterSelected => _selectedLanguages.isNotEmpty;
  bool get skillFilterSelected => _selectedSkills.isNotEmpty;
  bool get userFiltersSelected =>
      skillFilterSelected || languageFilterSelected || countryFilterSelected;

  bool get allSkillsSelected =>
      skills.toSet().intersection(_selectedSkills).isEmpty &&
      _selectedSkills.intersection(skills.toSet()).isEmpty;

  void setAll(
    Set<String> selectedCountries,
    Set<String> selectedLanguages,
    Set<String> selectedSkills,
  ) {
    _selectedCountries = selectedCountries;
    _selectedLanguages = selectedLanguages;
    _selectedSkills = selectedSkills;
    notifyListeners();
  }
}
