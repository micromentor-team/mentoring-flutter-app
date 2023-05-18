import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GraphqlService {
  String serverUrl;
  String subscriptionUrl;

  ValueNotifier<GraphQLClient>? client;

  GraphqlService({required this.serverUrl, required this.subscriptionUrl});

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

    final WebSocketLink wsLink = WebSocketLink(
      subscriptionUrl,
      subProtocol: GraphQLProtocol.graphqlTransportWs,
      config: SocketClientConfig(
        inactivityTimeout: null,
        initialPayload: () async {
          final token = await _getToken();

          return {
            'authorization': token,
          };
        },
      ),
    );

    /// subscriptions must be split otherwise `HttpLink` will. swallow them
    link = Link.split((request) => request.isSubscription, wsLink, link);

    client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: InMemoryStore()),
      ),
    );
  }
}
