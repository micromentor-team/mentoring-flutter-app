import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';
import '../../../utilities/debug_logger.dart';

class InboxInvitesSentScreen extends StatefulWidget {
  const InboxInvitesSentScreen({super.key});

  @override
  State<InboxInvitesSentScreen> createState() => _InboxInvitesSentScreenState();
}

class _InboxInvitesSentScreenState extends State<InboxInvitesSentScreen>
    with RouteAwareMixin<InboxInvitesSentScreen> {
  static const int tabBarIndex = 1;

  List<InboxListTile> _createTestTiles(AppLocalizations l10n) {
    // TODO(m-rosario): Replace mock data with backend data.
    return [
      InboxListTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1160811064/photo/portrait-of-a-handsome-latin-man.jpg?s=612x612&w=0&k=20&c=MxkLwUFZ9ChfzFdB-OmmiWBnZrSioj9MmfSdlwCk4-4=',
        fullName: 'Antoine Mousa',
        date: DateTime.now(),
        message:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        highlightTile: true,
        simplifyDate: true,
        datePrefix: l10n.inboxInvitesDateSent,
        onPressed: () => DebugLogger.warning('TODO: NOT IMPLEMENTED.'),
      ),
      InboxListTile(
        avatarUrl:
            'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
        fullName: 'Azadeh Sana',
        date: DateTime.now().subtract(const Duration(days: 1)),
        message:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        highlightTile: true,
        simplifyDate: true,
        datePrefix: l10n.inboxInvitesDateSent,
        onPressed: () => DebugLogger.warning('TODO: NOT IMPLEMENTED.'),
      ),
      InboxListTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1307694427/photo/portrait-of-businessman-in-glasses-holding-smartphone-in-hand.jpg?s=612x612&w=0&k=20&c=P4FDNemdXlXQi3O_yLePrJVzuTYmJx84-iIySj91fGQ=',
        fullName: 'Jenika Chua',
        date: DateTime.now().subtract(const Duration(days: 7)),
        message:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        highlightTile: true,
        simplifyDate: true,
        datePrefix: l10n.inboxInvitesDateSent,
        onPressed: () => DebugLogger.warning('TODO: NOT IMPLEMENTED.'),
      ),
    ];
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

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInboxScaffold(router: router);
    });
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
    try {
      DefaultTabController.of(context).animateTo(tabBarIndex);
    } catch (_) {
      // Can fail if the controller is no longer present in the context.
      // Revert to replacing the page with a new one.
      router.pushReplacement(Routes.inboxInvitesSent.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: Insets.paddingSmall,
          end: Insets.paddingMedium,
        ),
        child: ListView(
          children: _createContentList(
            _createTestTiles(l10n),
          ),
        ),
      ),
    );
  }
}
