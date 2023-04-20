import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'channel_api.dart';

Future<String> createChannelMutation(
    {required client,
    required createdBy,
    required List userIds}) async {
  String channelId = '';
  final QueryResult result = await client.mutate(
    MutationOptions(
      document: gql(kCreateChannel),
      variables: {
        'input': {'createdBy': createdBy, 'userIds': userIds}
      },
      onError: (error) {
        debugPrint('error: $error');
      },
    ),
  );
  debugPrint('mutation result');
  print(result.data);
  // pref.setString('channelId', result!.data!['createChannel']['id']);
  channelId = result.data!['createChannel']['id'].toString();
  return channelId;
}
