import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../__generated/schema/operations_message.graphql.dart';
import '../../../__generated/schema/schema.graphql.dart';
import '../../../constants/constants.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelLatestMessage
    = Query$FindChannelLatestMessage$findChannelById$latestMessage;
typedef ChannelMessage = Query$FindChannelMessages$findChannelMessages;
typedef ChannelMessageById
    = Query$FindChannelMessageById$findChannelMessageById;
typedef ChannelMessageInbox = Query$InboxAllUnseenMessages$myInbox$channels;
typedef CreatedMessage = Mutation$CreateChannelMessage$createChannelMessage;

class MessagesProvider extends BaseProvider {
  MessagesProvider({required super.client});

  // Queries
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

  Future<OperationResult<List<ChannelMessage>>> findChannelMessages({
    required Input$ChannelMessageListFilter input,
    required int fetchSkip,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelMessages,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindChannelMessages(
          filter: input,
          options: Input$FindObjectsOptions(
            includeDeleted: Enum$IncludeFilterOption.include,
            limit: Limits.chatMessagesPageSize,
            sort: [
              Input$SortItem(
                field: "createdAt",
                direction: Enum$SortDirection.desc,
              ),
            ],
            skip: fetchSkip,
          ),
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelMessages.fromJson(
              queryResult.data!,
            ).findChannelMessages
          : null,
    );
  }

  Future<OperationResult<ChannelMessageById>> findChannelMessageById({
    required String channelMessageId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelMessageById,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindChannelMessageById(
          channelMessageId: channelMessageId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelMessageById.fromJson(
              queryResult.data!,
            ).findChannelMessageById
          : null,
    );
  }

  Future<OperationResult<ChannelMessageInbox>> allUnseenMessages() async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryInboxAllUnseenMessages,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$InboxAllUnseenMessages.fromJson(
              queryResult.data!,
            ).myInbox.channels
          : null,
    );
  }

  // Mutations
  Future<OperationResult<CreatedMessage>> createMessage({
    required Input$ChannelMessageInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationCreateChannelMessage,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$CreateChannelMessage(
          input: input,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$CreateChannelMessage.fromJson(
              queryResult.data!,
            ).createChannelMessage
          : null,
    );
  }

  Future<OperationResult<String>> markMessageRead({
    required String channelId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationMarkChannelMessagesAsSeenByMe,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$MarkChannelMessagesAsSeenByMe(
          channelId: channelId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$MarkChannelMessagesAsSeenByMe.fromJson(
              queryResult.data!,
            ).markChannelMessagesAsSeenByMe
          : null,
    );
  }

  Future<OperationResult<String>> updateMessage({
    required Input$ChannelMessageInput input,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationUpdateChannelMessage,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateChannelMessage(
          input: input,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$UpdateChannelMessage.fromJson(
              queryResult.data!,
            ).updateChannelMessage
          : null,
    );
  }

  Future<OperationResult<String>> deleteMessage({
    required bool deletePhysically,
    required String channelMessageId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationDeleteChannelMessage,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$DeleteChannelMessage(
          deletePhysically: deletePhysically,
          channelMessageId: channelMessageId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$DeleteChannelMessage.fromJson(
              queryResult.data!,
            ).deleteChannelMessage
          : null,
    );
  }
}
