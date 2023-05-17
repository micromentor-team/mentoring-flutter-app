import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import '../unseen_messages/unseen_messages.dart';
import 'message.dart';
import 'messages_api.dart';
class MessagesProvider extends ChangeNotifier {
  GraphQLClient client;
  List<Message> _chatMessages = [];
  final List<String> _notSeenMessages = [];

  // this determines sender that message is seen or not
  List<String> get notSeenMessages {
    return _notSeenMessages;
  }

  // get all messages of a channel
  List<Message> get messages {
    return _chatMessages;
  }

  MessagesProvider({required this.client});

  Future<void> getMessages({required channelId, required userId}) async {
    _chatMessages = [];
    try {
      final QueryResult result = await client.query(
        QueryOptions(
          document: gql(kGetMessages),
          variables: {
            "filter": {
              "channelId": channelId
            }
          },
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      if (result.data != null) {
        List<Message> getChatMessages = [];
        List messagesData = result.data!['findChannelMessages'];
        // print('messages Data $messagesData');
        for (var element in messagesData) {
          // create a list of messages id which is not seen by the receiver
          if (element['createdBy'].toString() != userId && (element['statuses'] != null || element['statuses'] != [] ) ) {
            _notSeenMessages.add(element['id'].toString());
          }
          // creating List of message objects
          getChatMessages.add(Message(
              id: element['id'].toString(),
              createdBy: element['createdBy'].toString(),
              channelId: element['channelId'].toString(),
              messageText: element['messageText'].toString(),
              createdAt: DateTime.parse(element['createdAt']).toLocal(),
              statuses: (element['statuses'] ?? []),
              deletedAt: element['deletedAt'] == null ? null :DateTime.parse(element['deletedAt']).toLocal(),
              updatedAt: element['updatedAt'] == null ? null :DateTime.parse(element['updatedAt']).toLocal(),
              editedAt: element['editedAt'] == null ? null :DateTime.parse(element['editedAt']).toLocal(),
              replyToMessageId: element['replyToMessageId'],
              isLocal:
                  (element['createdBy'].toString() == userId) ? true : false));
        }
        _chatMessages = getChatMessages;
        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> subscribeToChannel({required channelId, required onChannelUpdated}) async {
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
        onChannelUpdated();
      },
    );
  }
  // Mutations
  void createMessage(
      {required channelId, required messageText, replyToMessageId}) async {
    final variables = {
      'input': {
        'channelId': channelId,
        'messageText': messageText,
      }
    };
    if (replyToMessageId != null) {
      variables['input']!['replyToMessageId'] = replyToMessageId;
    }
    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(kCreateMessage),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
        onError: (error) {
          debugPrint('error: $error');
        },
      ),
    );
    print(result.data);
  }

  // Unseen Messages
  List<UnseenMessages> get unseenMessages {
    return [..._unseenMessagesList];
  }

  List<UnseenMessages> _unseenMessagesList = [];
  Future<void> inbox() async {
    _unseenMessagesList = [];
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(kUnseenMessage),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    List data = result.data!['myInbox']['channels']['unseenMessages'];
    for (var element in data) {
      _unseenMessagesList.add(UnseenMessages.fromJson(element));
      // print('unseenMessagesList $_unseenMessagesList');
    }
    // print('groupedData $sortedData');

  }

  // Mark Messages as seen by the receiver in a channel
  Future<void> markMessageRead(channelId) async {
    await client.query(
      QueryOptions(
        document: gql(kMarkMessagesRead),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {"channelId": channelId},
      ),
    );
  }
  Future<void> updateMessage({required messageId,required messageText})async{
    final QueryResult result =  await client.query(
      QueryOptions(
        document: gql(kUpdateMessage),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          "input": {
            "messageText": messageText,
            "id": messageId
          }
        },
      ),
    );
    print('updated message $result');
}
  Future<void> deleteMessage({required messageId})async{
    final QueryResult result =  await client.query(
      QueryOptions(
        document: gql(kDeleteMessage),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          "deletePhysically": true,
          "channelMessageId": messageId
        },
      ),
    );
    print('updated message $result');
  }
}

