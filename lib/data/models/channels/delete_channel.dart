import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'channel_api.dart';

Future<void> deleteChannelMutation({client, channelId}) async {
  // final QueryResult result =
  await client.mutate(
    MutationOptions(
      document: gql(kDeleteChannel),
      variables: {"deletePhysically": true, "channelId": channelId},
      update: (cache, result) {
        final req = QueryOptions(
          document: gql(kGetChannelsList),
        ).asRequest;

        // read the channels cache
        final response = cache.readQuery(req);

        // debugPrint('deleteChannel result');
        // debugPrint(result);

        // remove the channel from the cache
        response?['channels'].removeWhere((item) => item['id'] == channelId);

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
}
