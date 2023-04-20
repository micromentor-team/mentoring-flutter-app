import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/connections/connections_api.dart';
import '../../../widgets/atoms/server_error.dart';
import 'package:mocktail/mocktail.dart';

class ConnectionsProvider extends ChangeNotifier {
  GraphQLClient client;

  ConnectionsProvider({required this.client}) {
    debugPrint('ConnectionsProvider initialized');
  }

  // Query builders
  Widget queryConnections({required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kGetConnections),
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) {
          final error = result.exception.toString();

          if (onError != null) {
            return onError(error);
          }
          return ServerError(error: error);
        }

        if (result.isLoading) {
          if (onLoading != null) {
            return onLoading();
          }
          return const SizedBox.shrink();
        }
        // debugPrint('queryParticipants:');
        return onData(result.data!['connections']);
      },
    );
  }
}
