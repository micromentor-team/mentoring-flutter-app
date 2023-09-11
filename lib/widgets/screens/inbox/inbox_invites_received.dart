import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/models/my_channel_invitations_model.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/empty_state_message.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

class InboxInvitesReceivedScreen extends StatefulWidget {
  const InboxInvitesReceivedScreen({super.key});

  @override
  State<InboxInvitesReceivedScreen> createState() =>
      _InboxInvitesReceivedScreenState();
}

class _InboxInvitesReceivedScreenState extends State<InboxInvitesReceivedScreen>
    with NavigationMixin<InboxInvitesReceivedScreen> {
  late final MyChannelInvitationsModel _myChannelInvitationsModel;
  late AppLocalizations _l10n;

  static const int tabBarIndex = 0;

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
    if (!pageRoute.isCurrent) return;
    _myChannelInvitationsModel.refreshReceivedInvitations(onlyPending: true);
    _l10n = AppLocalizations.of(context)!;
  }

  void _refreshTabIndex(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      TabController? tabController = DefaultTabController.maybeOf(context);
      if (tabController != null && tabController.index != tabBarIndex) {
        tabController.animateTo(tabBarIndex);
      }
    });
  }

  InboxListTile _createTile(
    ReceivedChannelInvitation invitation,
  ) {
    return InboxListTile(
      avatarUrl: invitation.sender.avatarUrl,
      fullName: invitation.sender.fullName ?? '',
      date: invitation.createdAt.toLocal(),
      message: invitation.messageText ?? _l10n.inboxInvitesReceivedMessage,
      highlightTileTitle:
          true, // TODO - Highlight and show notification bubble only if unseen
      highlightTileText: true,
      simplifyDate: true,
      onPressed: () => router.push(
        '${Routes.inboxInvitesReceived.path}/${invitation.id}',
      ),
    );
  }

  List<InboxListTile> _createTileList(
    List<ReceivedChannelInvitation> invitations,
  ) {
    List<InboxListTile> tiles = [];
    for (ReceivedChannelInvitation invitation in invitations) {
      tiles.add(
        _createTile(
          invitation,
        ),
      );
    }
    return tiles;
  }

  List<Widget> _createContentList(List<InboxListTile> tiles) {
    if (tiles.isEmpty) {
      return [];
    }
    List<Widget> contentList = [tiles.first];
    for (int i = 1; i < tiles.length; i++) {
      contentList.addAll([
        const Divider(
          height: 0,
          indent: Insets.paddingSmall,
        ),
        tiles[i],
      ]);
    }
    return contentList;
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setInboxScaffold(router: router);
    });
    _refreshTabIndex(context);
    return Consumer<MyChannelInvitationsModel>(
      builder: (context, myChannelInvitationsModel, _) {
        return AppUtility.widgetForAsyncState(
          state: myChannelInvitationsModel.state,
          onReady: () {
            if (myChannelInvitationsModel.receivedInvitations.isEmpty) {
              return EmptyStateMessage(
                icon: Icons.mail,
                text: _l10n.emptyStateInvites,
              );
            }
            return Padding(
              padding: const EdgeInsetsDirectional.only(
                start: Insets.paddingSmall,
                end: Insets.paddingMedium,
              ),
              child: ListView(
                children: _createContentList(
                  _createTileList(
                    myChannelInvitationsModel.receivedInvitations,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
