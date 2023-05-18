import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../widgets/atoms/server_error.dart';
import 'message.dart';
import 'messages_api.dart';

class MessagesProvider extends ChangeNotifier {
  GraphQLClient client;

  MessagesProvider({required this.client}) {
    // subscribeToMessages();
  }

  Widget queryMessages(
      {required channelId, required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kFindChannelMessages),
        variables: {
          "filter": {
            "channelId": channelId,
          }
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
        // debugPrint('Server response data');
        // print(result);

        return onData(result.data?['findChannelMessages']);
      },
    );
  }

  Widget unseenMessages({required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kUnseenMessages),
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
        // debugPrint('Server response data');
        // print(result);

        List data = result.data!['myInbox']['channels']['unseenMessages'];
        return onData(data);
      },
    );
  }

  Future<void> subscribeToChannel({required channelId}) async {
    final subscription = client.subscribe(
      SubscriptionOptions(
        document: gql(kChannelUpdatedSubscription),
        variables: {
          'objectId': channelId,
        },
      ),
    );

    subscription.listen(
      (event) {
        debugPrint('Subscription: Channel Updated: ${event.data}');
        client.query(
          QueryOptions(
            document: gql(kFindChannelMessages),
            variables: {
              "filter": {
                "channelId": channelId,
              }
            },
            fetchPolicy: FetchPolicy.networkOnly,
          ),
        );
      },
    );
  }

  _addMessageToCache({cache, channelId, message}) {
    final req = QueryOptions(
      document: gql(kFindChannelMessages),
      variables: {
        "filter": {
          "channelId": channelId,
        }
      },
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

  // Mutations
  Future<Message> createMessage(
      {required channelId, required messageText, replyToMessageId}) async {
    // print('createInvitees:');
    // print(inviteUsers);
    final variables = {
      'input': {
        'channelId': channelId,
        'messageText': messageText,
      }
    };

    if (replyToMessageId != null) {
      variables['input']!['replyToMessageId'] = replyToMessageId;
    }

    final QueryResult queryResult = await client.mutate(
      MutationOptions(
        document: gql(kCreateChannelMessage),
        variables: variables,
        update: (cache, result) {
          debugPrint('createMessage result');
          print(result);
          _addMessageToCache(
              cache: cache,
              channelId: channelId,
              message: result?.data?['createChannelMessage']);
        },
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );

    final messagesData = queryResult.data?['createChannelMessage'];
    return Message.fromJson(messagesData);
  }

  Future<void> markMessageRead(channelId) async {
    final QueryResult queryResult = await client.mutate(
      MutationOptions(
        document: gql(kMarkMessagesAsSeenByMe),
        variables: {
          "channelId": channelId,
        },
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );
  }

  Future<void> updateMessage({
    required channelId,
    required messageId,
    required messageText,
    bool? deleted,
  }) async {
    // print('Update Message with input');
    // print(input);
    await client.mutate(
      MutationOptions(
        document: gql(kUpdateChannelMessage),
        variables: {
          'input': {
            'id': messageId,
            'messageText': messageText,
          },
        },
        update: (cache, result) {
          final req = QueryOptions(
            document: gql(kFindChannelMessages),
            variables: {
              "filter": {
                "channelId": channelId,
              }
            },
          ).asRequest;

          // read the channels cache
          final response = cache.readQuery(req);

          // debugPrint('updateMessage result');
          // print(result);

          // update the channel in the cache
          final messagesCache = response?['findChannelMessages'];

          messagesCache[
                  messagesCache.indexWhere((item) => item['id'] == messageId)] =
              result?.data?['updateChannelMessage'];

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

  Future<void> deleteMessage({required messageId, deletePhysically}) async {
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kDeleteChannelMessage),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          "deletePhysically": deletePhysically ?? false,
          "channelMessageId": messageId,
        },
      ),
    );
    print('updated message $result');
  }
}
