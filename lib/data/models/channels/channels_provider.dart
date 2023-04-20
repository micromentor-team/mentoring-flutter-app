import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/widgets/atoms/server_error.dart';
import 'package:mm_flutter_app/data/models/channels/delete_channel.dart';
import 'create_channel.dart';
import 'channel.dart';
import 'channel_api.dart';

class ChannelsProvider extends ChangeNotifier {
  GraphQLClient client;
  List<Channel> _channels = [];

  ChannelsProvider({required this.client}) {
    debugPrint('ChannelsProvider initialized');
    // subscribeToChannels();
  }

  List<Channel> get channels {
    return _channels;
  }

  void subscribeToChannels() {
    final subscription = client.subscribe(
      SubscriptionOptions(
        document: gql(kSubscribeChannelUpdated),
      ),
    );

    subscription.listen(
      (event) {
        debugPrint('Subscription: Channel Updated: ${event.data}');
        final channelUpdated = event.data?['channelUpdated'];
        print(channelUpdated);
        final channelId = channelUpdated!['channel'];
        if (channelId != null) {
          client.query(
            QueryOptions(
              document: gql(kGetChannel),
              variables: {
                'channelId': channelId,
              },
              fetchPolicy: FetchPolicy.networkOnly,
            ),
          );

          client.query(
            QueryOptions(
              document: gql(kGetChannel),
              variables: {
                'id': channelId,
              },
              fetchPolicy: FetchPolicy.networkOnly,
            ),
          );
          client.query(
            QueryOptions(
              document: gql(kGetChannelsList),
              fetchPolicy: FetchPolicy.networkOnly,
            ),
          );
        }
      },
    );
  }

  // Query builders
  Widget queryChannels({required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kGetChannelsList),
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
        return onData(result.data!['channels']);
      },
    );
  }

  Widget querySingleChannel(
      {required channelId, required onData, onLoading, onError}) {
    return Query(
      options: QueryOptions(
        document: gql(kGetChannel),
        variables: {
          'id': channelId,
        },
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
        return onData(result.data!['channel']);
      },
    );
  }

  // Queries
  Future<void> getChannels({required userId}) async {
    try {
      final QueryResult result = await client.query(
        QueryOptions(
          document: gql(kGetChannel),
          variables: {"userId": userId},
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      List<Channel> loadedChannels = [];

      if (result.data != null) {
        List data = result.data!['findChannelsForUser'];
        for (var element in data) {
          loadedChannels.add(Channel.fromJson(element));
        }
        notifyListeners();
      }
      _channels = loadedChannels;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  String _channelId = '';

  String get channelId {
    return _channelId;
  }

  Channel _inboxChannel =
      Channel(id: '', name: '', createdAt: '', userIds: [], createdBy: '',messages: []);

  Channel get inboxChannel {
    return _inboxChannel;
  }

  Future<void> findChannelById(channelId) async {
    try {
      final QueryResult result = await client.query(
        QueryOptions(
          document: gql(kFindChannelByChannelId),
          variables: {"findChannelByIdId": channelId},
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      if (result.data != null) {
        var data = result.data!['findChannelById'];
        _inboxChannel = Channel(
            id: data['id'],
            name: data['name'],
            createdAt: data['createdAt'],
            messages: data['messages'],
            userIds: data['userIds'],
            createdBy: data['createdBy']);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> createChannel(
      {required createdBy,
      required List<Object?> userIds}) async {
    // getting all channels created by user
    await getChannels(userId: createdBy);
    List<Channel> channels = [];
    for (Channel element in _channels) {
      if (element.userIds.contains(userIds[0]) &&
          element.userIds.contains(userIds[1])) {
        channels.add(element);
      }
    }
    if (channels.isNotEmpty) {
      return channels.first.id.toString();
      // print("channel found $_channelId");
    }else{
      return await createChannelMutation(
          client: client, createdBy: createdBy, userIds: userIds);
      // print("channel created $_channelId");
    }
  }

  Future<void> deleteChannel({required Channel channel}) async {
    deleteChannelMutation(client: client, channelId: channel.id);
    _channels.remove(channel);
    notifyListeners();
  }

  Future<void> addChannelMessageEvent({required channelId,required List messageIds, required userId}) async {
    try {
      await client.query(
        QueryOptions(
          document: gql(kAddChannelMessageEvent),
          variables: {
            "input": {
              "channelId": channelId,
              "messageIds":messageIds,
              "recipientId": userId,
              "event":'seen',
            }
          },
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
