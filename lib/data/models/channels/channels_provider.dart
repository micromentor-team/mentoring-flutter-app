import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../widgets/atoms/server_error.dart';
import 'channels_api.dart';
import 'create_channel.dart';

class ChannelsProvider extends ChangeNotifier {
  GraphQLClient client;

  ChannelsProvider({required this.client}) {
    debugPrint('ChannelsProvider initialized');
    // subscribeToChannels();
  }

  // Query builders
  Widget queryUserChannels(
      {required userId, required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kFindChannelsForUser),
        variables: {
          "userId": userId,
        },
        fetchPolicy: FetchPolicy.networkOnly,
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
        print(result.data!['findChannelsForUser']);
        return onData(result.data!['findChannelsForUser']);
      },
    );
  }

  // Query builders
  Widget findChannelByChannelId(
      {required channelId, required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kFindChannelById),
        variables: {
          "channelId": channelId,
        },
        fetchPolicy: FetchPolicy.networkOnly,
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
        // print(result);
        return onData(result.data!['findChannelById']);
      },
    );
  }

  // Mutations
  Future<String> createChannel({required createdBy, required userIds}) async {
    return createChannelMutation(
        client: client, createdBy: createdBy, userIds: userIds);
  }
}
