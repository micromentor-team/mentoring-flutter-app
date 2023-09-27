import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../__generated/schema/operations_content.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef CompanyStage = Query$FindCompanyStages$findCompanyStages;
typedef CompanyType = Query$FindCompanyTypes$findCompanyTypes;
typedef Country = Query$FindCountries$findCountries;
typedef EducationLevel = Query$FindEducationLevels$findEducationLevels;
typedef Expertise = Query$FindExpertises$findExpertises;
typedef PresetGender = Query$FindGenders$findGenders;
typedef Industry = Query$FindIndustries$findIndustries;
typedef Language = Query$FindLanguages$findLanguages;
typedef OptionByType = Query$FindAllOptions$findOptions;
typedef AllOptionsByType = Query$FindAllOptionsByType;

class ContentProvider extends BaseProvider {
  List<CompanyStage>? _companyStages;
  List<CompanyType>? _companyTypes;
  List<Country>? _countries;
  List<EducationLevel>? _educationLevels;
  List<Expertise>? _expertises;
  List<PresetGender>? _presetGenders;
  List<Industry>? _industries;
  List<Language>? _languages;

  ContentProvider({required super.client}) {
    debugPrint('ContentProvider initialized');
  }

  // one setter for all content options
  void _setAllContentOptions({
    List<CompanyStage>? companyStages,
    List<CompanyType>? companyTypes,
    List<Country>? countries,
    List<EducationLevel>? educationLevels,
    List<Expertise>? expertises,
    List<PresetGender>? presetGenders,
    List<Industry>? industries,
    List<Language>? languages,
  }) {
    if (companyStages != null) {
      _companyStages = companyStages;
    }
    if (companyTypes != null) {
      _companyTypes = companyTypes;
    }
    if (countries != null) {
      _countries = countries;
    }
    if (educationLevels != null) {
      _educationLevels = educationLevels;
    }
    if (expertises != null) {
      _expertises = expertises;
    }
    if (presetGenders != null) {
      _presetGenders = presetGenders;
    }
    if (industries != null) {
      _industries = industries;
    }
    if (languages != null) {
      _languages = languages;
    }
    debugPrint('Updated content provider values: ${toString()}');
  }

  // separate setters for each content option

  void _setCompanyStageOptions(List<CompanyStage> companyStages) {
    _companyStages = companyStages;
    debugPrint('Updated content provider company stage values: ${toString()}');
  }

  void _setCompanyTypeOptions(List<CompanyType> companyTypes) {
    _companyTypes = companyTypes;
    debugPrint('Updated content provider company type values: ${toString()}');
  }

  void _setCountryOptions(List<Country> countries) {
    _countries = countries;
    debugPrint('Updated content provider country values: ${toString()}');
  }

  void _setEducationLevelOptions(List<EducationLevel> educationLevels) {
    _educationLevels = educationLevels;
    debugPrint(
        'Updated content provider education level values: ${toString()}');
  }

  void _setExpertiseOptions(List<Expertise> expertises) {
    _expertises = expertises;
    debugPrint('Updated content provider expertise values: ${toString()}');
  }

  void _setPresetGenderOptions(List<PresetGender> presetGenders) {
    _presetGenders = presetGenders;
    debugPrint('Updated content provider preset gender values: ${toString()}');
  }

  void _setIndustryOptions(List<Industry> industries) {
    _industries = industries;
    debugPrint('Updated content provider industry values: ${toString()}');
  }

  void _setLanguageOptions(List<Language> languages) {
    _languages = languages;
    debugPrint('Updated content provider language values: ${toString()}');
  }

  // separate getters for each content option

  List<CompanyStage>? get companyStageOptions {
    return _companyStages;
  }

  List<CompanyType>? get companyTypeOptions {
    return _companyTypes;
  }

  List<Country>? get countryOptions {
    return _countries;
  }

  List<EducationLevel>? get educationLevelOptions {
    return _educationLevels;
  }

  List<Expertise>? get expertiseOptions {
    return _expertises;
  }

  List<PresetGender>? get presetGenderOptions {
    return _presetGenders;
  }

  List<Industry>? get industryOptions {
    return _industries;
  }

  List<Language>? get languageOptions {
    return _languages;
  }

  // Queries

  Future<OperationResult<List<Country>>> findCountries() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCountries,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCountries.fromJson(
              queryResult.data!,
            ).findCountries
          : null,
    );
    if (result.response != null) _setCountryOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<Expertise>>> findExpertises() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindExpertises,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindExpertises.fromJson(
              queryResult.data!,
            ).findExpertises
          : null,
    );
    if (result.response != null) _setExpertiseOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<Industry>>> findIndustries() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindIndustries,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindIndustries.fromJson(
              queryResult.data!,
            ).findIndustries
          : null,
    );
    if (result.response != null) _setIndustryOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<Language>>> findLanguages() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindLanguages,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindLanguages.fromJson(
              queryResult.data!,
            ).findLanguages
          : null,
    );
    if (result.response != null) _setLanguageOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<CompanyType>>> findCompanyTypes() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCompanyTypes,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCompanyTypes.fromJson(
              queryResult.data!,
            ).findCompanyTypes
          : null,
    );
    if (result.response != null) _setCompanyTypeOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<CompanyStage>>> findCompanyStages() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCompanyStages,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCompanyStages.fromJson(
              queryResult.data!,
            ).findCompanyStages
          : null,
    );
    if (result.response != null) _setCompanyStageOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<EducationLevel>>> findEducationLevels() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindEducationLevels,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindEducationLevels.fromJson(
              queryResult.data!,
            ).findEducationLevels
          : null,
    );
    if (result.response != null) _setEducationLevelOptions(result.response!);
    return result;
  }

  Future<OperationResult<List<PresetGender>>> findPresetGenders() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindGenders,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindGenders.fromJson(
              queryResult.data!,
            ).findGenders
          : null,
    );
    if (result.response != null) _setPresetGenderOptions(result.response!);
    return result;
  }

  Future<OperationResult<AllOptionsByType>> findAllOptionsByType() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindAllOptionsByType,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    final result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindAllOptionsByType.fromJson(
              queryResult.data!,
            )
          : null,
    );
    if (result.response != null) {
      _setAllContentOptions(
        companyStages: result.response?.findCompanyStages
            .map((e) =>
                Query$FindCompanyStages$findCompanyStages.fromJson(e.toJson()))
            .toList(),
        companyTypes: result.response?.findCompanyTypes
            .map((e) =>
                Query$FindCompanyTypes$findCompanyTypes.fromJson(e.toJson()))
            .toList(),
        countries: result.response?.findCountries
            .map((e) => Query$FindCountries$findCountries.fromJson(e.toJson()))
            .toList(),
        expertises: result.response?.findExpertises
            .map(
                (e) => Query$FindExpertises$findExpertises.fromJson(e.toJson()))
            .toList(),
        industries: result.response?.findIndustries
            .map(
                (e) => Query$FindIndustries$findIndustries.fromJson(e.toJson()))
            .toList(),
        languages: result.response?.findLanguages
            .map((e) => Query$FindLanguages$findLanguages.fromJson(e.toJson()))
            .toList(),
        educationLevels: result.response?.findEducationLevels
            .map((e) => Query$FindEducationLevels$findEducationLevels.fromJson(
                e.toJson()))
            .toList(),
        presetGenders: result.response?.findGenders
            .map((e) => Query$FindGenders$findGenders.fromJson(e.toJson()))
            .toList(),
      );
    }
    return result;
  }
}
