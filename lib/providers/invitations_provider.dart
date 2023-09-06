import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';

import '../__generated/schema/operations_invitation.graphql.dart';
import 'base/base_provider.dart';
import 'base/operation_result.dart';

typedef ChannelInvitationById
    = Query$FindChannelInvitationById$findChannelInvitationById;
typedef ReceivedChannelInvitation
    = Query$MyReceivedChannelInvitations$myChannelInvitations;
typedef SentChannelInvitation
    = Query$MySentChannelInvitations$myChannelInvitations;

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

  Future<OperationResult<List<ReceivedChannelInvitation>>>
      getReceivedInvitations({
    required bool onlyPending,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryMyReceivedChannelInvitations,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MyReceivedChannelInvitations(
          direction: Enum$ChannelInvitationDirection.received,
          onlyPending: onlyPending,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$MyReceivedChannelInvitations.fromJson(
              queryResult.data!,
            ).myChannelInvitations
          : null,
    );
  }

  Future<OperationResult<List<SentChannelInvitation>>> getSentInvitations({
    required bool onlyPending,
  }) async {
    final QueryResult queryResult = await asyncQuery(
      queryOptions: QueryOptions(
        document: documentNodeQueryMySentChannelInvitations,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MyReceivedChannelInvitations(
          direction: Enum$ChannelInvitationDirection.sent,
          onlyPending: onlyPending,
        ).toJson(),
      ),
    );
    return OperationResult(
      gqlQueryResult: queryResult,
      response: queryResult.data != null
          ? Query$MySentChannelInvitations.fromJson(
              queryResult.data!,
            ).myChannelInvitations
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
