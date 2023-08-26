import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:provider/provider.dart';

import '../../__generated/schema/operations_user.graphql.dart';
import '../../providers/base/operation_result.dart';
import '../../providers/invitations_provider.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 2;
  const InvitationSection({Key? key}) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  late final InvitationsProvider _invitationsProvider;
  late Future<OperationResult<InvitationInbox>> _invitationInbox;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _invitationsProvider =
        Provider.of<InvitationsProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _invitationInbox = _invitationsProvider.getInboxInvitations();
    _l10n = AppLocalizations.of(context)!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _invitationInbox,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            // TODO: Get invitations sent by this user that were accepted (matches)
            if (snapshot.data?.response?.channels?.pendingInvitations == null ||
                snapshot
                    .data!.response!.channels!.pendingInvitations!.isEmpty) {
              return const SizedBox(width: 0, height: 0);
            }
            final filteredInvitations = snapshot
                .data!.response!.channels!.pendingInvitations!
                .take(InvitationSection.maxTilesToShow)
                .toList(growable: false);
            if (filteredInvitations.isEmpty) {
              return const SizedBox(width: 0, height: 0);
            }
            return SectionTile(
              title: _l10n.homeInvitationSectionTitle,
              addTopDivider: true,
              removeBottomPadding: true,
              seeAllOnPressed: () =>
                  context.push(Routes.inboxInvitesReceived.path),
              child: InvitationList(invitations: filteredInvitations),
            );
          },
        );
      },
    );
  }
}

class InvitationList extends StatefulWidget {
  final List<ChannelPendingInvitation> invitations;

  const InvitationList({
    super.key,
    required this.invitations,
  });

  @override
  State<InvitationList> createState() => _InvitationListState();
}

class _InvitationListState extends State<InvitationList> {
  late final UserProvider _userProvider;
  late Future<OperationResult<List<AllUsersWithFilterResult>>> _invitationUsers;
  AppLocalizations? _l10n;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    List<String> userIds = widget.invitations
        .map((e) => e.createdBy)
        .nonNulls
        .toList(growable: false);
    _invitationUsers = _userProvider.findUsersWithFilter(
      input: Input$UserListFilter(ids: userIds),
    );
    _l10n = AppLocalizations.of(context);
  }

  InvitationTile _createInvitationTile(
    BuildContext context,
    AppLocalizations l10n,
    String channelInvitationId,
    Query$FindUsersWithFilter$findUsers user,
    Enum$ChannelInvitationStatus invitationStatus,
  ) {
    return InvitationTile(
      userName: user.fullName ?? '',
      userJobTitle: user.jobTitle ?? '',
      invitationStatus: invitationStatus,
      avatarUrl: user.avatarUrl,
      buttonOnPressed: () => {
        if (invitationStatus == Enum$ChannelInvitationStatus.created)
          {
            context.push(
              '${Routes.inboxInvitesReceived.path}/$channelInvitationId',
            )
          }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _invitationUsers,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            if (snapshot.data?.response == null) {
              return const SizedBox(width: 0, height: 0);
            }
            List<Widget> invitationWidgets = [];
            for (int i = 0; i < widget.invitations.length; i++) {
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
                  context,
                  _l10n!,
                  widget.invitations[i].id,
                  snapshot.data!.response!.firstWhere((element) =>
                      widget.invitations[i].createdBy! == element.id),
                  widget.invitations[i].status,
                ),
              );
            }
            return Column(
              children: invitationWidgets,
            );
          },
        );
      },
    );
  }
}
