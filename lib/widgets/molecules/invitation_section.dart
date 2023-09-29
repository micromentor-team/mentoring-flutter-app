import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';
import 'package:provider/provider.dart';

import '../../providers/invitations_provider.dart';
import '../../providers/models/inbox_model.dart';

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
  late final InboxModel _inboxModel;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
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

  List<Widget> _createInvitationList(
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
    return invitationWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<InboxModel, List<ReceivedChannelInvitation>?>(
      selector: (_, inboxModel) => inboxModel.pendingReceivedInvitations,
      shouldRebuild: (oldValue, newValue) =>
          !(const DeepCollectionEquality.unordered()
              .equals(oldValue, newValue)) ||
          _inboxModel.receivedInvitationsState != AsyncState.loading,
      builder: (context, pendingReceivedInvitations, _) {
        return AppUtility.widgetForAsyncState(
          state: _inboxModel.receivedInvitationsState,
          onReady: () {
            if (pendingReceivedInvitations?.isEmpty ?? true) {
              return const SizedBox(width: 0, height: 0);
            }
            return SectionTile(
              title: _l10n.homeInvitationSectionTitle,
              addTopDivider: false,
              removeBottomPadding: true,
              seeAllOnPressed: () =>
                  context.push(Routes.inboxInvitesReceived.path),
              child: _createInvitationList(
                pendingReceivedInvitations!,
              ),
            );
          },
        );
      },
    );
  }
}
