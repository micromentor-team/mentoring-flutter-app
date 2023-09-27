import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

class ExploreCardFiltersModel extends ChangeNotifier {
  final List<String> countries;
  final List<String> languages;
  final List<String> skills;

  final List<String> industries;
  final List<String> userTypes =  ['Mentor', 'Mentee'];

  ExploreCardFiltersModel.empty()
      : countries = [],
        languages = [],
        skills = [],
        industries = [];

  ExploreCardFiltersModel({
    required this.countries,
    required this.languages,
    required this.skills,
    required this.industries,
  });

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
  String? get selectedKeyword =>
      (_selectedKeyword == null || (_selectedKeyword?.isEmpty ?? false))
          ? null
          : _selectedKeyword!;

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

  Input$UserSearchInput toUserSearchInput(int maxResultsCount) {
    return Input$UserSearchInput(
      countryTextIds:
          _selectedCountries.isEmpty ? null : _selectedCountries.toList(),
      expertisesTextIds:
          _selectedSkills.isEmpty ? null : _selectedSkills.toList(),
      maxResultCount: maxResultsCount,
      languagesTextIds:
          _selectedLanguages.isEmpty ? null : _selectedLanguages.toList(),
      offersHelp:
          (_selectedUserTypes.contains("Mentor") || _selectedUserTypes.isEmpty)
              ? Enum$UserSearchFieldPreference.isTrue
              : Enum$UserSearchFieldPreference.isFalse,
      searchText: selectedKeyword,
      seeksHelp:
          (_selectedUserTypes.contains("Mentee") || _selectedUserTypes.isEmpty)
              ? Enum$UserSearchFieldPreference.isTrue
              : Enum$UserSearchFieldPreference.isFalse,
    );
  }
}
