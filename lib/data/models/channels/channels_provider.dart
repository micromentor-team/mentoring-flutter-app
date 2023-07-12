import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations.graphql.dart';
import 'package:mm_flutter_app/data/models/base/base_provider.dart';

import '../../../widgets/atoms/server_error.dart';
import '../base/operation_result.dart';
import 'channels_api.dart';
import 'create_channel.dart';

class ChannelsProvider extends BaseProvider {
  ChannelsProvider({required super.client}) {
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

  Widget getInboxInvitations({
    required Widget Function(
      OperationResult<Query$GetInboxInvitations$myInbox> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryGetInboxInvitations,
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<Query$GetInboxInvitations$myInbox> result =
            OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$GetInboxInvitations.fromJson(
                  queryResult.data!,
                ).myInbox
              : null,
        );
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  // Mutations
  Future<String> createChannel({required createdBy, required userIds}) async {
    return createChannelMutation(
        client: client, createdBy: createdBy, userIds: userIds);
  }
}
