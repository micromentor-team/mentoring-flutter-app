import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/channel_operations.graphql.dart';
import '../../__generated/schema/user_operations.graphql.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 2;
  const InvitationSection({Key? key}) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ChannelsProvider channelsProvider =
        Provider.of<ChannelsProvider>(context);
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return channelsProvider.getInboxInvitations(
      onData: (data, {refetch, fetchMore}) {
        if (data.response?.channels?.invitations == null ||
            data.response!.channels!.invitations!.isEmpty) {
          return const SizedBox(width: 0, height: 0);
        }
        final filteredInvitations = data.response!.channels!.invitations!
            .where((element) =>
                element.status == Enum$ChannelInvitationStatus.accepted ||
                element.status == Enum$ChannelInvitationStatus.created)
            .take(InvitationSection.maxTilesToShow)
            .toList(growable: false);
        List<String> userIds = filteredInvitations
            .map((e) => e.createdBy)
            .nonNulls
            .toList(growable: false);
        if (filteredInvitations.isEmpty ||
            filteredInvitations.length != userIds.length) {
          return const SizedBox(width: 0, height: 0);
        }
        return SectionTile(
          title: l10n.homeInvitationSectionTitle,
          addTopDivider: true,
          removeBottomPadding: true,
          seeAllOnPressed: () => context.push('/inbox'),
          child: _createInvitationTiles(
            l10n,
            userProvider,
            userIds,
            filteredInvitations,
          ),
        );
      },
    );
  }

  Widget _createInvitationTiles(
      AppLocalizations l10n,
      UserProvider userProvider,
      List<String> userIds,
      List<Query$GetInboxInvitations$myInbox$channels$invitations>
          invitations) {
    return userProvider.findUsersWithFilter(Input$UserListFilter(ids: userIds),
        onData: (data, {refetch, fetchMore}) {
      if (data.response == null) {
        return const SizedBox(width: 0, height: 0);
      }
      List<Widget> invitationWidgets = [];
      for (int i = 0; i < invitations.length; i++) {
        if (i > 0) {
          invitationWidgets.add(Components.indentedSubDivider);
        }
        invitationWidgets.add(_createInvitationTile(
          l10n,
          data.response!
              .firstWhere((element) => invitations[i].createdBy! == element.id),
          invitations[i].status,
        ));
      }
      return Column(
        children: invitationWidgets,
      );
    });
  }

  InvitationTile _createInvitationTile(
    AppLocalizations l10n,
    Query$FindUsersWithFilter$findUsers user,
    Enum$ChannelInvitationStatus invitationStatus,
  ) {
    return InvitationTile(
      userName: user.fullName ?? '',
      userJobTitle: user.jobTitle ?? '',
      invitationStatus: invitationStatus,
      avatarUrl: user.avatarUrl,
      buttonOnPressed: () => {
        //TODO(m-rosario): Open profile when clicked.
      },
    );
  }
}
