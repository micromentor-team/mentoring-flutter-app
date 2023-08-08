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

class ContentProvider extends BaseProvider {
  List<CompanyStage>? _companyStages;
  List<CompanyType>? _companyTypes;
  List<Country>? _countries;
  List<EducationLevel>? _educationLevels;
  List<Expertise>? _expertises;
  List<PresetGender>? _presetGenders;
  List<Industry>? _industries;
  List<Language>? _languages;

  ContentProvider({required super.client});

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

  // use a query as the primary method for fetching content options
  Future updateContentOptions({
    bool fetchFromNetworkOnly = false,
  }) async {
    // final List<Future> futures = [
    //   findCompanyStages(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findCompanyTypes(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findCountries(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findExpertises(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findIndustries(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findLanguages(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findEducationLevels(fetchFromNetworkOnly: fetchFromNetworkOnly),
    //   findPresetGenders(fetchFromNetworkOnly: fetchFromNetworkOnly),
    // ];
    // // await all these at once to avoid multiple blocking calls
    // final List results = await Future.wait(futures);
    // _setAllContentOptions(
    //   companyStages: results[0].response,
    //   companyTypes: results[1].response,
    //   countries: results[2].response,
    //   expertises: results[3].response,
    //   industries: results[4].response,
    //   languages: results[5].response,
    //   educationLevels: results[6].response,
    //   presetGenders: results[7].response,
    // );

    // same effect as the above Dart code, but with one GraphQL request instead of 8
    // casts one type to another, but it's safe because they're all coming from identical graphql queries in operations_content.graphql
    final data =
        await findAllOptionsByType(fetchFromNetworkOnly: fetchFromNetworkOnly);

    _setAllContentOptions(
      companyStages: data.response?.findCompanyStages as List<CompanyStage>?,
      companyTypes: data.response?.findCompanyTypes as List<CompanyType>?,
      countries: data.response?.findCountries as List<Country>?,
      expertises: data.response?.findExpertises as List<Expertise>?,
      industries: data.response?.findIndustries as List<Industry>?,
      languages: data.response?.findLanguages as List<Language>?,
      educationLevels:
          data.response?.findEducationLevels as List<EducationLevel>?,
      presetGenders: data.response?.findGenders as List<PresetGender>?,
    );
  }

  // Queries

  Future<OperationResult<List<Country>>> findCountries({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCountries,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCountries.fromJson(
              queryResult.data!,
            ).findCountries
          : null,
    );
  }

  Future<OperationResult<List<Expertise>>> findExpertises({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindExpertises,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindExpertises.fromJson(
              queryResult.data!,
            ).findExpertises
          : null,
    );
  }

  Future<OperationResult<List<Industry>>> findIndustries({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindIndustries,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindIndustries.fromJson(
              queryResult.data!,
            ).findIndustries
          : null,
    );
  }

  Future<OperationResult<List<Language>>> findLanguages({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindLanguages,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindLanguages.fromJson(
              queryResult.data!,
            ).findLanguages
          : null,
    );
  }

  Future<OperationResult<List<CompanyType>>> findCompanyTypes({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCompanyTypes,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCompanyTypes.fromJson(
              queryResult.data!,
            ).findCompanyTypes
          : null,
    );
  }

  Future<OperationResult<List<CompanyStage>>> findCompanyStages({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCompanyStages,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindCompanyStages.fromJson(
              queryResult.data!,
            ).findCompanyStages
          : null,
    );
  }

  Future<OperationResult<List<EducationLevel>>> findEducationLevels({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindEducationLevels,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindEducationLevels.fromJson(
              queryResult.data!,
            ).findEducationLevels
          : null,
    );
  }

  Future<OperationResult<List<PresetGender>>> findPresetGenders({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindGenders,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindGenders.fromJson(
              queryResult.data!,
            ).findGenders
          : null,
    );
  }

  Future<OperationResult<Query$FindAllOptionsByType>> findAllOptionsByType({
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindCountries,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindAllOptionsByType.fromJson(
              queryResult.data!,
            )
          : null,
    );
  }
}
