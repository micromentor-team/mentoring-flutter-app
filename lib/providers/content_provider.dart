import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_content.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef CompanyStage = Query$FindCompanyStages$findCompanyStages;
typedef CompanyType = Query$FindCompanyTypes$findCompanyTypes;
typedef Country = Query$FindCountries$findCountries;
typedef EducationLevel = Query$FindEducationLevels$findEducationLevels;
typedef Expertise = Query$FindExpertises$findExpertises;
typedef Gender = Query$FindGenders$findGenders;
typedef Industry = Query$FindIndustries$findIndustries;
typedef Language = Query$FindLanguages$findLanguages;

class ContentProvider extends BaseProvider {
  List<CompanyStage>? _companyStages;
  List<CompanyType>? _companyTypes;
  List<Country>? _countries;
  List<EducationLevel>? _educationLevels;
  List<Expertise>? _expertises;
  List<Gender>? _presetGenders;
  List<Industry>? _industries;
  List<Language>? _languages;

  ContentProvider({required super.client});

  void _setAllContentOptions({
    List<CompanyStage>? companyStages,
    List<CompanyType>? companyTypes,
    List<Country>? countries,
    List<EducationLevel>? educationLevels,
    List<Expertise>? expertises,
    List<Gender>? presetGenders,
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
    debugPrint('Updated content provider values: ${this.toString()}');
  }

  // getters

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

  List<Gender>? get presetGenderOptions {
    return _presetGenders;
  }

  List<Industry>? get industryOptions {
    return _industries;
  }

  List<Language>? get languageOptions {
    return _languages;
  }


  // Queries
  // TODO: add queries for all other variables
  //    waiting until base provider is refactored to return Future<OperationResult>

  Widget queryCountries({
    required Widget Function(
      OperationResult<List<Query$FindCountries$findCountries>> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
    bool logFailures = true,
  }) {
    return runQuery(
      document: documentNodeQueryFindCountries,
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<List<Query$FindCountries$findCountries>> result =
            OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$FindCountries.fromJson(
                  queryResult.data!,
                ).findCountries
              : null,
        );
        if (result.response != null) {
          _setAllContentOptions(countries: result.response!);
        } else {
          debugPrint("Error: no countries found");
        }
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
      logFailures: logFailures,
    );
  }
}
