import 'package:flutter/material.dart';

class ExploreCardFiltersModel extends ChangeNotifier {
  static const List<String> countries = ['USA'];
  static const List<String> languages = ['English', 'Urdu', 'Hindi'];
  static const List<String> skills = ['Marketing', 'Operations', 'StartingUp'];

  static const List<String> industries = ['Programming', 'Farming', 'Plumbing'];
  static const List<String> userTypes = ['Mentor', 'Mentee'];

  Set<String> _selectedCountries = {};
  Set<String> _selectedLanguages = {};
  Set<String> _selectedSkills = {};

  String? _selectedIndustry;
  Set<String> _selectedUserTypes = {};
  String? _selectedKeyword;

  Set<String> get selectedCountries => _selectedCountries;
  Set<String> get selectedLanguages => _selectedLanguages;
  Set<String> get selectedSkills => _selectedSkills;

  String? get selectedIndustry => _selectedIndustry;
  Set<String> get selectedUserTypes => _selectedUserTypes;
  String? get selectedKeyword => _selectedKeyword;

  bool get countryFilterSelected => _selectedCountries.isNotEmpty;
  bool get languageFilterSelected => _selectedLanguages.isNotEmpty;
  bool get skillFilterSelected => _selectedSkills.isNotEmpty;
  bool get userFiltersSelected =>
      skillFilterSelected || languageFilterSelected || countryFilterSelected;

  void setFilters({
    Set<String>? selectedCountries,
    Set<String>? selectedLanguages,
    Set<String>? selectedSkills,
  }) {
    _selectedCountries = selectedCountries ?? {};
    _selectedLanguages = selectedLanguages ?? {};
    _selectedSkills = selectedSkills ?? {};
    notifyListeners();
  }

  void setAdvancedFilters({
    String? selectedIndustry,
    Set<String>? selectedUserTypes,
    String? selectedKeyword,
  }) {
    _selectedIndustry = selectedIndustry;
    _selectedUserTypes = selectedUserTypes ?? {};
    _selectedKeyword = selectedKeyword;
    notifyListeners();
  }
}
