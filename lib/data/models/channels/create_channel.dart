import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'channels_api.dart';

Future<String> createChannelMutation({
  required client,
  required createdBy,
  required List userIds,
}) async {
  // final QueryResult result =
  final QueryResult result = await client.mutate(
    MutationOptions(
      document: gql(kCreateChannel),
      variables: {
        'input': {
          'createdBy': createdBy,
          'userIds': userIds,
        }
      },
      update: (cache, result) {
        final req = QueryOptions(
          document: gql(kFindChannelsForUser),
          variables: {
            "userId": createdBy,
          },
        ).asRequest;
        final response = cache.readQuery(req);

        debugPrint('Channels cache response');
        List channelsData = response?['findChannelsForUser'];
        debugPrint('Channels in cache: ${channelsData.length}');
        response?['findChannelsForUser'].add(result?.data?['createChannel']);

        if (response != null) {
          cache.writeQuery(
            req,
            broadcast: true,
            data: response,
          );
        }
      },
      onError: (error) {
        debugPrint('error: $error');
      },
    ),
  );

  debugPrint('createChannel result: $result');
  return result.data!['createChannel']['id'].toString();
}
