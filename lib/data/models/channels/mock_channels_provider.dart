import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/operations_channel.graphql.dart';
import 'package:mm_flutter_app/providers/base/base_provider.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';

class MockChannelsProvider extends BaseProvider {
  MockChannelsProvider({required super.client}) {
    debugPrint('MockChannelsProvider initialized');
  }

  Widget queryUserChannels({
    required String userId,
    required Function(dynamic) onData,
    Function? onLoading,
    Function? onError,
  }) {
    return onData(
      jsonDecode(
        """[{"__typename": "Channel", "id": "642bec90b1235682c898803b", "name": "James McCloud,Slippy Toad", "userIds": ["640abd97587f51d992jh44bb32", "640acf9055942518a6cdca38"], "createdBy": "640abd97587f51d992jh44bb32", "createdAt": "2023-04-04T09:23:28.471Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992jh44bb32", "fullName": "James McCloud", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "james"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640acf9055942518a6cdca38", "fullName": "Slippy Toad", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "slippy"}}]}]""",
      ),
    );
  }

  Widget findChannelByChannelId({
    required String channelId,
    required Function(dynamic) onData,
    Function? onLoading,
    Function? onError,
  }) {
    return onData(
      jsonDecode(
        """[{"__typename": "Channel", "id": "642bec90b1235682c898803b", "name": "James McCloud,Slippy Toad", "userIds": ["640abd97587f51d992jh44bb32", "640acf9055942518a6cdca38"], "createdBy": "640abd97587f51d992jh44bb32", "createdAt": "2023-04-04T09:23:28.471Z", "participants": [{"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640abd97587f51d992jh44bb32", "fullName": "James McCloud", "avatarUrl": "https://randomuser.me/api/portraits/med/men/68.jpg", "userHandle": "james"}}, {"__typename": "ChannelParticipant", "user": {"__typename": "User", "id": "640acf9055942518a6cdca38", "fullName": "Slippy Toad", "avatarUrl": "https://randomuser.me/api/portraits/med/men/18.jpg", "userHandle": "slippy"}}]}]""",
      ),
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
    return const SizedBox.shrink();
  }

  Future<String> createChannel({
    required String createdBy,
    required List<String> userIds,
  }) async {
    return '3';
  }
}
