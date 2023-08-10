import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/operations_channel.graphql.dart';
import '../../__generated/schema/operations_user.graphql.dart';
import '../../providers/base/operation_result.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 2;
  const InvitationSection({Key? key}) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  ChannelsProvider? _channelsProvider;
  AppLocalizations? l10n;
  Future<OperationResult<InvitationInbox>>? _invitationInbox;

  @override
  void initState() {
    super.initState();
    _channelsProvider = Provider.of<ChannelsProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _invitationInbox = _channelsProvider?.getInboxInvitations();
    l10n = AppLocalizations.of(context);
  }

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return FutureBuilder(
      future: _invitationInbox,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            if (snapshot.data?.response?.channels?.invitations == null ||
                snapshot.data!.response!.channels!.invitations!.isEmpty) {
              return const SizedBox(width: 0, height: 0);
            }
            final filteredInvitations = snapshot
                .data!.response!.channels!.invitations!
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
              title: l10n!.homeInvitationSectionTitle,
              addTopDivider: true,
              removeBottomPadding: true,
              seeAllOnPressed: () =>
                  context.push(Routes.inboxInvitesReceived.path),
              child: _createInvitationTiles(
                l10n!,
                userProvider,
                userIds,
                filteredInvitations,
              ),
            );
          },
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
    return userProvider.findUsersWithFilter(
      input: Input$UserListFilter(ids: userIds),
      onData: (data, {refetch, fetchMore}) {
        if (data.response == null) {
          return const SizedBox(width: 0, height: 0);
        }
        List<Widget> invitationWidgets = [];
        for (int i = 0; i < invitations.length; i++) {
          if (i > 0) {
            invitationWidgets.add(
              const Divider(
                thickness: 1,
                height: 0,
                indent: Insets.paddingMedium,
                endIndent: Insets.paddingMedium,
              ),
            );
          }
          invitationWidgets.add(
            _createInvitationTile(
              l10n,
              data.response!.firstWhere(
                  (element) => invitations[i].createdBy! == element.id),
              invitations[i].status,
            ),
          );
        }
        return Column(
          children: invitationWidgets,
        );
      },
    );
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
