import 'package:graphql_flutter/graphql_flutter.dart';

import '../__generated/schema/operations_invitation.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelInvitation
    = Query$GetInboxInvitations$myInbox$channels$invitations;
typedef ChannelInvitationById
    = Query$FindChannelInvitationById$findChannelInvitationById;
typedef ChannelPendingInvitation
    = Query$GetInboxInvitations$myInbox$channels$pendingInvitations;
typedef InvitationInbox = Query$GetInboxInvitations$myInbox;

class InvitationsProvider extends BaseProvider {
  InvitationsProvider({required super.client});

  // Queries
  Future<OperationResult<ChannelInvitationById>> findChannelInvitationById({
    required String channelInvitationId,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryFindChannelInvitationById,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FindChannelInvitationById(
          channelInvitationId: channelInvitationId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$FindChannelInvitationById.fromJson(
              queryResult.data!,
            ).findChannelInvitationById
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
  Future<OperationResult<String>> acceptChannelInvitation({
    required String channelInvitationId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationAcceptChannelInvitation,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$AcceptChannelInvitation(
          channelInvitationId: channelInvitationId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$AcceptChannelInvitation.fromJson(
              queryResult.data!,
            ).acceptChannelInvitation
          : null,
    );
  }

  Future<OperationResult<String>> declineChannelInvitation({
    required String channelInvitationId,
  }) async {
    final QueryResult queryResult = await asyncMutation(
      mutationOptions: MutationOptions(
        document: documentNodeMutationDeclineChannelInvitation,
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$DeclineChannelInvitation(
          channelInvitationId: channelInvitationId,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Mutation$DeclineChannelInvitation.fromJson(
              queryResult.data!,
            ).declineChannelInvitation
          : null,
    );
  }
}
