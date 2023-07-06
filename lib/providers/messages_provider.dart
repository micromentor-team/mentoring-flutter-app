import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_message.graphql.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelMessage = Query$FindChannelMessages$findChannelMessages;
typedef UnseenMessage
    = Query$InboxUnseenMessages$myInbox$channels$unseenMessages;

class MessagesProvider extends BaseProvider {
  MessagesProvider({required super.client}) {
    // subscribeToMessages();
  }

  _addMessageToCache({cache, required String channelId, message}) {
    final req = QueryOptions(
      document: documentNodeQueryFindChannelMessages,
      variables: Variables$Query$FindChannelMessages(
        filter: Input$ChannelMessageListFilter(
          channelId: channelId,
        ),
      ).toJson(),
    ).asRequest;
    final response = cache.readQuery(req);

    // debugPrint('mutation result');
    // print(result);

    // debugPrint('Channels cache response');
    // debugPrint('Channels in cache: ${channelsData.length}');
    response?['findChannelMessages'].add(message);

    // print(response?['messages']);

    if (response != null) {
      cache.writeQuery(
        req,
        broadcast: true,
        data: response,
      );
    }
  }

  // Queries
  Widget findChannelMessages({
    required Input$ChannelMessageListFilter input,
    required Widget Function(
      OperationResult<List<Query$FindChannelMessages$findChannelMessages>>
          data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryFindChannelMessages,
      variables: Variables$Query$FindChannelMessages(
        filter: input,
      ).toJson(),
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<
                List<Query$FindChannelMessages$findChannelMessages>> result =
            OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$FindChannelMessages.fromJson(
                  queryResult.data!,
                ).findChannelMessages
              : null,
        );
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
    );
  }

  Widget unseenMessages({
    required Widget Function(
      OperationResult<
              List<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>>
          data, {
      void Function()? refetch,
      void Function(FetchMoreOptions)? fetchMore,
    }) onData,
    Widget Function()? onLoading,
    Widget Function(String error, {void Function()? refetch})? onError,
  }) {
    return runQuery(
      document: documentNodeQueryInboxUnseenMessages,
      onData: (queryResult, {refetch, fetchMore}) {
        final OperationResult<
                List<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>>
            result = OperationResult(
          gqlQueryResult: queryResult,
          response: queryResult.data != null
              ? Query$InboxUnseenMessages.fromJson(
                  queryResult.data!,
                ).myInbox.channels?.unseenMessages
              : null,
        );
        return onData(result, refetch: refetch, fetchMore: fetchMore);
      },
      onLoading: onLoading,
      onError: onError,
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
      update: (cache, result) {
        debugPrint('createMessage result');
        _addMessageToCache(
          cache: cache,
          channelId: input.channelId!,
          message: result?.data?['createChannelMessage'],
        );
      },
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
      update: (cache, result) {
        final req = QueryOptions(
          document: documentNodeQueryFindChannelMessages,
          variables: Variables$Query$FindChannelMessages(
            filter: Input$ChannelMessageListFilter(
              channelId: input.channelId,
            ),
          ).toJson(),
        ).asRequest;

        // read the channels cache
        final response = cache.readQuery(req);

        // debugPrint('updateMessage result');
        // print(result);

        // update the channel in the cache
        final messagesCache = response?['findChannelMessages'];

        messagesCache[
                messagesCache.indexWhere((item) => item['id'] == input.id)] =
            result?.data?['updateChannelMessage'];

        if (response != null) {
          cache.writeQuery(
            req,
            broadcast: true,
            data: response,
          );
        }
      },
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
  Future<void> subscribeToChannel({
    required String channelId,
  }) async {
    final subscription = client.subscribe(
      SubscriptionOptions(
        document: documentNodeSubscriptionChannelUpdated,
        variables: Variables$Subscription$ChannelUpdated(
          objectId: channelId,
        ).toJson(),
      ),
    );

    subscription.listen(
      (event) {
        debugPrint('Subscription: Channel Updated: ${event.data}');
        client.query(
          QueryOptions(
            document: documentNodeQueryFindChannelMessages,
            variables: Variables$Query$FindChannelMessages(
              filter: Input$ChannelMessageListFilter(
                channelId: channelId,
              ),
            ).toJson(),
            fetchPolicy: FetchPolicy.networkOnly,
          ),
        );
      },
    );
  }
}
