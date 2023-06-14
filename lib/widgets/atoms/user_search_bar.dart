import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class UserSearchBar extends StatelessWidget {
  final String? hintText;

  const UserSearchBar({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      hintText: hintText,
      onTap: () => {
        showSearch(
          context: context,
          delegate: UserSearchDelegate(),
        )
      },
    );
  }
}

class UserSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.only(
          right: Insets.widgetSmallInset,
        ),
        child: IconButton(
          onPressed: () {
            // Clear the search box.
            query = "";
          },
          icon: const Icon(Icons.clear),
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Hide onscreen keyboard.
        FocusScope.of(context).unfocus();
        // Return to previous page.
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //TODO(m-rosario): Implement search and return list of result.
    return ListView();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //TODO(m-rosario): Generate a list of suggestions as user types into search.
    return ListView();
  }
}
