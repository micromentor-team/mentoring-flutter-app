import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import '../__generated/schema/operations_channel.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelForUser = Query$FindChannelsForUser$findChannelsForUser;
typedef ChannelForUserParticipant
    = Query$FindChannelsForUser$findChannelsForUser$participants;
typedef ChannelById = Query$FindChannelById$findChannelById;
typedef ChannelParticipant = Query$FindChannelById$findChannelById$participants;

class ChannelsProvider extends BaseProvider {
  ChannelsProvider({required super.client}) {
    debugPrint('ChannelsProvider initialized');
    // subscribeToChannels();
  }

  // Queries
  Widget queryUserChannels({
    required String userId,
    required Widget Function(
      OperationResult<List<Query$FindChannelsForUser$findChannelsForUser>>
          data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryFindChannelsForUser,
      variables: Variables$Query$FindChannelsForUser(userId: userId).toJson(),
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<
                List<Query$FindChannelsForUser$findChannelsForUser>> result =
            OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$FindChannelsForUser.fromJson(
                  queryResult.data!,
                ).findChannelsForUser
              : null,
        );
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget findChannelById({
    required String channelId,
    required Widget Function(
      OperationResult<Query$FindChannelById$findChannelById> data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryFindChannelById,
      variables: Variables$Query$FindChannelById(channelId: channelId).toJson(),
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<Query$FindChannelById$findChannelById> result =
            OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$FindChannelById.fromJson(
                  queryResult.data!,
                ).findChannelById
              : null,
        );
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
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
  Future<OperationResult<Mutation$CreateChannel$createChannel>> createChannel({
    required Input$ChannelInput input,
  }) async {
    final QueryResult queryResult = await runMutation(
        document: documentNodeMutationCreateChannel,
        variables: Variables$Mutation$CreateChannel(input: input).toJson(),
        update: (cache, result) {
          final req = QueryOptions(
            document: documentNodeQueryFindChannelsForUser,
            variables:
                Variables$Query$FindChannelsForUser(userId: input.createdBy!)
                    .toJson(),
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
        });

    final OperationResult<Mutation$CreateChannel$createChannel> result =
        OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$CreateChannel.fromJson(
              queryResult.data!,
            ).createChannel
          : null,
    );

    return result;
  }

  Future<OperationResult<String>> deleteChannel({
    required bool deletePhysically,
    required String channelId,
  }) async {
    final QueryResult queryResult = await runMutation(
        document: documentNodeMutationDeleteChannel,
        variables: Variables$Mutation$DeleteChannel(
          deletePhysically: deletePhysically,
          channelId: channelId,
        ).toJson(),
        update: (cache, result) {
          final req = QueryOptions(
            document: documentNodeQueryGetChannelsList,
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
        });

    final OperationResult<String> result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$DeleteChannel.fromJson(
              queryResult.data!,
            ).deleteChannel
          : null,
    );

    return result;
  }
}
