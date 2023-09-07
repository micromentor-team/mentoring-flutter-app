import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/models/my_channel_invitations_model.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/empty_state_message.dart';
import 'package:mm_flutter_app/widgets/screens/inbox/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

class InboxInvitesSentScreen extends StatefulWidget {
  const InboxInvitesSentScreen({super.key});

  @override
  State<InboxInvitesSentScreen> createState() => _InboxInvitesSentScreenState();
}

class _InboxInvitesSentScreenState extends State<InboxInvitesSentScreen>
    with RouteAwareMixin<InboxInvitesSentScreen> {
  late final MyChannelInvitationsModel _myChannelInvitationsModel;
  late AppLocalizations _l10n;

  static const int tabBarIndex = 1;

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
    _myChannelInvitationsModel.refreshSentInvitations(onlyPending: true);
    _l10n = AppLocalizations.of(context)!;
  }

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInboxScaffold(router: router);
    });
  }

  void _refreshTabIndex(BuildContext context) {
    if (isRouteActive) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        TabController? tabController = DefaultTabController.maybeOf(context);
        if (tabController != null && tabController.index != tabBarIndex) {
          tabController.animateTo(tabBarIndex);
        }
      });
    }
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  InboxListTile _createTile(
    SentChannelInvitation invitation,
  ) {
    return InboxListTile(
      avatarUrl: invitation.recipient.avatarUrl,
      fullName: invitation.recipient.fullName ?? '',
      date: invitation.createdAt.toLocal(),
      message: invitation.messageText ?? '',
      highlightTileTitle: true,
      simplifyDate: true,
      onPressed: () => router.push(
        '${Routes.inboxInvitesSent.path}/${invitation.id}',
      ),
    );
  }

  List<InboxListTile> _createTileList(
    List<SentChannelInvitation> invitations,
  ) {
    List<InboxListTile> tiles = [];
    for (SentChannelInvitation invitation in invitations) {
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
    _refreshTabIndex(context);
    return Consumer<MyChannelInvitationsModel>(
      builder: (context, myChannelInvitationsModel, _) {
        return AppUtility.widgetForAsyncState(
          state: myChannelInvitationsModel.state,
          onReady: () {
            if (myChannelInvitationsModel.sentInvitations.isEmpty) {
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
                    myChannelInvitationsModel.sentInvitations,
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
