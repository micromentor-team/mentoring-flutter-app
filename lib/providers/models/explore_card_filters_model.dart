import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

class ExploreCardFiltersModel extends ChangeNotifier {
  final List<String> countries;
  final List<String> languages;
  final List<String> expertises;

  final List<String> industries;
  final List<String> userTypes = ['Mentor', 'Mentee'];

  ExploreCardFiltersModel.empty()
      : countries = [],
        languages = [],
        expertises = [],
        industries = [];

  ExploreCardFiltersModel({
    required this.countries,
    required this.languages,
    required this.expertises,
    required this.industries,
  });

  Set<String> _selectedCountries = {};
  Set<String> _selectedLanguages = {};
  Set<String> _selectedExpertises = {};
  Set<String> _selectedIndustries = {};
  Set<String> _selectedUserTypes = {};
  String? _selectedKeyword;

  Set<String> get selectedCountries => _selectedCountries;
  Set<String> get selectedLanguages => _selectedLanguages;
  Set<String> get selectedExpertises => _selectedExpertises;

  Set<String> get selectedIndustries => _selectedIndustries;
  Set<String> get selectedUserTypes => _selectedUserTypes;
  String? get selectedKeyword =>
      (_selectedKeyword == null || (_selectedKeyword?.isEmpty ?? false))
          ? null
          : _selectedKeyword!;

  bool get countryFilterSelected => _selectedCountries.isNotEmpty;
  bool get languageFilterSelected => _selectedLanguages.isNotEmpty;
  bool get expertiseFilterSelected => _selectedExpertises.isNotEmpty;
  bool get userFiltersSelected =>
      expertiseFilterSelected ||
      languageFilterSelected ||
      countryFilterSelected;

  void setFilters({
    Set<String>? selectedCountries,
    Set<String>? selectedLanguages,
    Set<String>? selectedExpertises,
  }) {
    _selectedCountries = selectedCountries ?? {};
    _selectedLanguages = selectedLanguages ?? {};
    _selectedExpertises = selectedExpertises ?? {};
    notifyListeners();
  }

  void setAdvancedFilters({
    Set<String>? selectedIndustries,
    Set<String>? selectedUserTypes,
    String? selectedKeyword,
  }) {
    _selectedIndustries = selectedIndustries ?? {};
    _selectedUserTypes = selectedUserTypes ?? {};
    _selectedKeyword = selectedKeyword;
    notifyListeners();
  }

  Input$UserSearchInput toUserSearchInput(int maxResultsCount) {
    return Input$UserSearchInput(
      countryTextIds:
          _selectedCountries.isEmpty ? null : _selectedCountries.toList(),
      expertisesTextIds:
          _selectedExpertises.isEmpty ? null : _selectedExpertises.toList(),
      maxResultCount: maxResultsCount,
      languagesTextIds:
          _selectedLanguages.isEmpty ? null : _selectedLanguages.toList(),
      industriesTextIds:
          _selectedIndustries.isEmpty ? null : _selectedIndustries.toList(),
      offersHelp: _selectedUserTypes.contains("Mentor")
          ? Enum$UserSearchFieldPreference.isTrue
          : Enum$UserSearchFieldPreference.any,
      searchText: selectedKeyword,
      seeksHelp:
          (_selectedUserTypes.contains("Mentee") || _selectedUserTypes.isEmpty)
              ? Enum$UserSearchFieldPreference.isTrue
              : Enum$UserSearchFieldPreference.any,
    );
  }
}
