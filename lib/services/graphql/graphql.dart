import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GraphqlService {
  String serverUrl;

  ValueNotifier<GraphQLClient>? client;

  GraphqlService({required this.serverUrl});

  Future<String> _getToken() async {
    final pref = await SharedPreferences.getInstance();
    String? authToken = pref.getString('authToken');
    return authToken != null ? "Bearer $authToken" : 'none';
  }

  void connect() {
    final HttpLink httpLink = HttpLink(
      serverUrl,
    );

    final AuthLink authLink = AuthLink(
      getToken: () async {
        return await _getToken();
      },
    );

    Link link = authLink.concat(httpLink);

    client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: InMemoryStore()),
      ),
    );
  }
}
