import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/my_channel_invitations_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:provider/provider.dart';

import '../../providers/invitations_provider.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 2;
  final AuthenticatedUser authenticatedUser;
  const InvitationSection({
    Key? key,
    required this.authenticatedUser,
  }) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  late final MyChannelInvitationsModel _myChannelInvitationsModel;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _myChannelInvitationsModel = Provider.of<MyChannelInvitationsModel>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
    _myChannelInvitationsModel.refreshReceivedInvitations(onlyPending: true);
  }

  InvitationTile _createInvitationTile(
    BuildContext context,
    ReceivedChannelInvitation receivedInvitation,
  ) {
    return InvitationTile(
      userName: receivedInvitation.sender.fullName ?? '',
      userJobTitle: receivedInvitation.sender.jobTitle ?? '',
      invitationStatus: receivedInvitation.status,
      avatarUrl: receivedInvitation.sender.avatarUrl,
      buttonOnPressed: () => context.push(
        '${Routes.inboxInvitesReceived.path}/${receivedInvitation.id}',
      ),
    );
  }

  Widget _createInvitationList(
    List<ReceivedChannelInvitation> receivedInvitations,
  ) {
    List<Widget> invitationWidgets = [];
    for (int i = 0;
        i < min(InvitationSection.maxTilesToShow, receivedInvitations.length);
        i++) {
      if (invitationWidgets.isNotEmpty) {
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
        _createInvitationTile(context, receivedInvitations[i]),
      );
    }
    return Column(
      children: invitationWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyChannelInvitationsModel>(
      builder: (context, myChannelInvitationsModel, _) {
        return AppUtility.widgetForAsyncState(
          state: myChannelInvitationsModel.state,
          onReady: () {
            if (myChannelInvitationsModel.receivedInvitations.isEmpty) {
              return const SizedBox(width: 0, height: 0);
            }
            return SectionTile(
              title: _l10n.homeInvitationSectionTitle,
              addTopDivider: true,
              removeBottomPadding: true,
              seeAllOnPressed: () =>
                  context.push(Routes.inboxInvitesReceived.path),
              child: _createInvitationList(
                myChannelInvitationsModel.receivedInvitations,
              ),
            );
          },
        );
      },
    );
  }
}
