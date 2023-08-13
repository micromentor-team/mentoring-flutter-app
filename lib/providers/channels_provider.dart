import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import '../__generated/schema/operations_channel.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelById = Query$FindChannelById$findChannelById;
typedef ChannelForUser = Query$FindChannelsForUser$findChannelsForUser;
typedef ChannelForUserParticipant
    = Query$FindChannelsForUser$findChannelsForUser$participants;
typedef ChannelParticipant = Query$FindChannelById$findChannelById$participants;
typedef ChannelLatestMessage
    = Query$FindChannelLatestMessage$findChannelById$latestMessage;
typedef InvitationInbox = Query$GetInboxInvitations$myInbox;

class ChannelsProvider extends BaseProvider {
  ChannelsProvider({required super.client});

  // Queries
  Future<OperationResult<List<ChannelForUser>>> queryUserChannels({
    required String userId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelsForUser,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindChannelsForUser(userId: userId).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelsForUser.fromJson(
              queryResult.data!,
            ).findChannelsForUser
          : null,
    );
  }

  Future<OperationResult<ChannelById>> findChannelById({
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelById,
        fetchPolicy: FetchPolicy.networkOnly,
        variables:
            Variables$Query$FindChannelById(channelId: channelId).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelById.fromJson(
              queryResult.data!,
            ).findChannelById
          : null,
    );
  }

  Future<OperationResult<ChannelLatestMessage>> findChannelLatestMessage({
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelLatestMessage,
        fetchPolicy: FetchPolicy.noCache,
        variables:
            Variables$Query$FindChannelLatestMessage(channelId: channelId)
                .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelLatestMessage.fromJson(
              queryResult.data!,
            ).findChannelById.latestMessage
          : null,
    );
  }

  Future<OperationResult<InvitationInbox>> getInboxInvitations() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryGetInboxInvitations,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$GetInboxInvitations.fromJson(
              queryResult.data!,
            ).myInbox
          : null,
    );
  }

  // Mutations
  Future<OperationResult<Mutation$CreateChannel$createChannel>> createChannel({
    required Input$ChannelInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationCreateChannel,
        fetchPolicy: FetchPolicy.networkOnly,
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
        },
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$CreateChannel.fromJson(
              queryResult.data!,
            ).createChannel
          : null,
    );
  }

  Future<OperationResult<String>> deleteChannel({
    required bool deletePhysically,
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationDeleteChannel,
        fetchPolicy: FetchPolicy.networkOnly,
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
        },
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$DeleteChannel.fromJson(
              queryResult.data!,
            ).deleteChannel
          : null,
    );
  }

  Future<OperationResult<String>> archiveChannelForAuthenticatedUser({
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationArchiveChannelForMe,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$ArchiveChannelForMe(channelId: channelId)
            .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$ArchiveChannelForMe.fromJson(
              queryResult.data!,
            ).archiveChannelForMe
          : null,
    );
  }

  Future<OperationResult<String>> unarchiveChannelForAuthenticatedUser({
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUnarchiveChannelForMe,
        fetchPolicy: FetchPolicy.noCache,
        variables:
            Variables$Mutation$UnarchiveChannelForMe(channelId: channelId)
                .toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$UnarchiveChannelForMe.fromJson(
              queryResult.data!,
            ).unarchiveChannelForMe
          : null,
    );
  }
}
