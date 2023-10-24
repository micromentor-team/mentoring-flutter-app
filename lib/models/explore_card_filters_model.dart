import 'package:flutter/material.dart';

import '../__generated/schema/schema.graphql.dart';
import '../constants/constants.dart';

class ExploreCardFiltersModel extends ChangeNotifier {
  final List<String> countries;
  final List<String> languages;
  final List<String> expertises;

  final List<String> industries;
  final List<String> companyStages;

  ExploreCardFiltersModel.empty()
      : countries = [],
        languages = [],
        expertises = [],
        industries = [],
        companyStages = [];

  ExploreCardFiltersModel({
    required this.countries,
    required this.languages,
    required this.expertises,
    required this.industries,
    required this.companyStages,
  });

  Set<String> _selectedCountries = {};
  Set<String> _selectedLanguages = {};
  Set<String> _selectedExpertises = {};
  Set<String> _selectedIndustries = {};
  Set<String> _selectedStages = {};
  UserType? _selectedUserType;
  String? _selectedKeyword;

  Set<String> get selectedCountries => _selectedCountries;
  Set<String> get selectedLanguages => _selectedLanguages;
  Set<String> get selectedExpertises => _selectedExpertises;

  Set<String> get selectedIndustries => _selectedIndustries;
  Set<String> get selectedStages => _selectedStages;
  UserType? get selectedUserType => _selectedUserType;
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
    Set<String>? selectedStages,
    UserType? selectedUserType,
    String? selectedKeyword,
  }) {
    _selectedIndustries = selectedIndustries ?? {};
    _selectedStages = selectedStages ?? {};
    _selectedUserType = selectedUserType;
    _selectedKeyword = selectedKeyword;
    notifyListeners();
  }

  Input$UserSearchInput toUserSearchInput(int maxResultsCount) {
    return Input$UserSearchInput(
      filter: Input$UserSearchFilterInput(
        countryTextIds:
            _selectedCountries.isEmpty ? null : _selectedCountries.toList(),
        expertisesTextIds:
            _selectedExpertises.isEmpty ? null : _selectedExpertises.toList(),
        languagesTextIds:
            _selectedLanguages.isEmpty ? null : _selectedLanguages.toList(),
        industriesTextIds:
            _selectedIndustries.isEmpty ? null : _selectedIndustries.toList(),
        companyStagesTextIds:
            _selectedStages.isEmpty ? null : _selectedStages.toList(),
        offersHelp: _selectedUserType == UserType.mentor
            ? Enum$UserSearchFieldPreference.isTrue
            : Enum$UserSearchFieldPreference.isFalse,
        searchText: selectedKeyword,
        seeksHelp: _selectedUserType == UserType.entrepreneur
            ? Enum$UserSearchFieldPreference.isTrue
            : Enum$UserSearchFieldPreference.isFalse,
      ),
      maxResultCount: maxResultsCount,
    );
  }
}
