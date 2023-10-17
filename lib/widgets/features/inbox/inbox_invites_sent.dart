import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/models/inbox_model.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/inbox/components/empty_state_message.dart';
import 'package:mm_flutter_app/widgets/features/inbox/components/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';
import '../../../utilities/scaffold_utils/appbar_factory.dart';
import '../../../utilities/scaffold_utils/drawer_factory.dart';

class InboxInvitesSentScreen extends StatefulWidget {
  const InboxInvitesSentScreen({super.key});

  @override
  State<InboxInvitesSentScreen> createState() => _InboxInvitesSentScreenState();
}

class _InboxInvitesSentScreenState extends State<InboxInvitesSentScreen>
    with NavigationMixin<InboxInvitesSentScreen> {
  late final InboxModel _inboxModel;
  late AppLocalizations _l10n;

  static const int tabBarIndex = 1;

  @override
  void initState() {
    super.initState();
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
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
    SentChannelInvitation invitation,
  ) {
    return InboxListTile(
      avatarUrl: invitation.recipient.avatarUrl,
      fullName: invitation.recipient.fullName ?? '',
      date: invitation.createdAt.toLocal(),
      message: invitation.messageText ?? '',
      highlightTileTitle: true,
      highlightTileText: false,
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
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    buildPageRouteScaffold((scaffoldModel) {
      scaffoldModel.setParams(
        appBar: AppBarFactory.createInboxAppBar(
          router: router,
        ),
        drawer: DrawerFactory.createInboxDrawer(),
      );
    });
    _refreshTabIndex(context);
    return Selector<InboxModel, List<SentChannelInvitation>?>(
      selector: (_, inboxModel) => inboxModel.pendingSentInvitations,
      shouldRebuild: (oldValue, newValue) =>
          !(const DeepCollectionEquality.unordered()
              .equals(oldValue, newValue)) ||
          _inboxModel.sentInvitationsState != AsyncState.loading,
      builder: (_, pendingSentInvitations, __) {
        return AppUtility.widgetForAsyncState(
          state: _inboxModel.sentInvitationsState,
          onReady: () {
            if (pendingSentInvitations?.isEmpty ?? true) {
              return EmptyStateMessage(
                icon: Icons.mail,
                text: _l10n.inboxInvitesEmptyState,
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
                    pendingSentInvitations!,
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
