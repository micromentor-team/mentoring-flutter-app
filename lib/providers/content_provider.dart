import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_content.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import 'base/base_provider.dart';
import 'base/operation_result.dart';

class ContentProvider extends BaseProvider {
  ContentProvider({required super.client});
  // TODO: add queries for expertises, education levels, countries, company stages, company types, genders, industries, and languages
}
