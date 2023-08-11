import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_channel.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/operations_message.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';

import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelMessage = Query$FindChannelMessages$findChannelMessages;
typedef FilteredChannelMessage
    = Query$FindChannelMessagesWithOptions$findChannelMessages;
typedef UnseenMessage
    = Query$InboxUnseenMessages$myInbox$channels$unseenMessages;

class MessagesProvider extends BaseProvider {
  MessagesProvider({required super.client});

  // Queries
  Future<OperationResult<List<ChannelMessage>>> findChannelMessages({
    required Input$ChannelMessageListFilter input,
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

  Future<OperationResult<List<FilteredChannelMessage>>>
      findChannelMessagesWithOptions({
    required Input$ChannelMessageListFilter input,
    required Input$FindObjectsOptions options,
    bool fetchFromNetworkOnly = false,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelMessagesWithOptions,
        fetchPolicy: fetchFromNetworkOnly
            ? FetchPolicy.networkOnly
            : FetchPolicy.cacheFirst,
        variables: Variables$Query$FindChannelMessagesWithOptions(
          filter: input,
          options: options,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelMessagesWithOptions.fromJson(
              queryResult.data!,
            ).findChannelMessages
          : null,
    );
  }

  Future<OperationResult<List<UnseenMessage>>> unseenMessages() async {
    final QueryResult queryResult = await asyncQuery(
        queryOptions: QueryOptions(
      document: documentNodeQueryInboxUnseenMessages,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    ));
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$InboxUnseenMessages.fromJson(
              queryResult.data!,
            ).myInbox.channels?.unseenMessages
          : null,
    );
  }

  // Mutations
  Future<OperationResult<Mutation$CreateChannelMessage$createChannelMessage>>
      createMessage({
    required Input$ChannelMessageInput input,
  }) async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationCreateChannelMessage,
      variables: Variables$Mutation$CreateChannelMessage(
        input: input,
      ).toJson(),
    );

    final OperationResult<Mutation$CreateChannelMessage$createChannelMessage>
        result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$CreateChannelMessage.fromJson(
              queryResult.data!,
            ).createChannelMessage
          : null,
    );

    return result;
  }

  Future<OperationResult<String>> markMessageRead({
    required String channelId,
  }) async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationMarkChannelMessagesAsSeenByMe,
      variables: Variables$Mutation$MarkChannelMessagesAsSeenByMe(
        channelId: channelId,
      ).toJson(),
    );

    final OperationResult<String> result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$MarkChannelMessagesAsSeenByMe.fromJson(
              queryResult.data!,
            ).markChannelMessagesAsSeenByMe
          : null,
    );

    return result;
  }

  Future<OperationResult<String>> updateMessage({
    required Input$ChannelMessageInput input,
  }) async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationUpdateChannelMessage,
      variables: Variables$Mutation$UpdateChannelMessage(
        input: input,
      ).toJson(),
    );

    final OperationResult<String> result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$UpdateChannelMessage.fromJson(
              queryResult.data!,
            ).updateChannelMessage
          : null,
    );

    return result;
  }

  Future<OperationResult<String>> deleteMessage({
    required bool deletePhysically,
    required String channelMessageId,
  }) async {
    final QueryResult queryResult = await runMutation(
      document: documentNodeMutationDeleteChannelMessage,
      variables: Variables$Mutation$DeleteChannelMessage(
        deletePhysically: deletePhysically,
        channelMessageId: channelMessageId,
      ).toJson(),
    );

    final OperationResult<String> result = OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$DeleteChannelMessage.fromJson(
              queryResult.data!,
            ).deleteChannelMessage
          : null,
    );

    return result;
  }

  // Subscriptions
  StreamSubscription<QueryResult<Object?>> subscribeToChannel({
    required String channelId,
    required void Function() onSubscriptionEvent,
  }) {
    final stream = client.subscribe(
      SubscriptionOptions(
        document: documentNodeSubscriptionChannelChanged,
        variables: Variables$Subscription$ChannelChanged(
          channelId: channelId,
        ).toJson(),
      ),
    );

    return stream.listen(
      (queryResult) async {
        if (queryResult.hasException) {
          CrashHandler.logCrashReport('Subscription for Channel Id ($channelId)'
              'encountered an error: ${queryResult.exception}');
          return;
        }
        if (queryResult.isLoading) {
          // Data is not ready, return and check again on the next cycle.
          return;
        }
        // Process new data.
        onSubscriptionEvent();
      },
    );
  }
}
