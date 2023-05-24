import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/atoms/searchbar.dart' as sb;

Widget searchBarWidget() {
  return const sb.CustomSearchBar(
    text: 'Search by country, industry or expenditure',
  );
}
