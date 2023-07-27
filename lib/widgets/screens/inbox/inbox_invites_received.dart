import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';
import '../../../providers/models/scaffold_model.dart';

class InboxInvitesReceivedScreen extends StatefulWidget {
  const InboxInvitesReceivedScreen({super.key});

  @override
  State<InboxInvitesReceivedScreen> createState() =>
      _InboxInvitesReceivedScreenState();
}

class _InboxInvitesReceivedScreenState extends State<InboxInvitesReceivedScreen>
    with RouteAwareMixin<InboxInvitesReceivedScreen> {
  static const int tabBarIndex = 0;
  InboxListTile _createTestTile(
      BuildContext context, String message, int tileIndex) {
    // TODO(m-rosario): Replace mock data with backend data.
    final GoRouter router = GoRouter.of(context);
    final DateTime date = DateTime.now()
        .subtract(Duration(days: tileIndex * pow(1.4, tileIndex).floor()));
    return InboxListTile(
      avatarUrl:
          'https://media.istockphoto.com/id/1307694427/photo/portrait-of-businessman-in-glasses-holding-smartphone-in-hand.jpg?s=612x612&w=0&k=20&c=P4FDNemdXlXQi3O_yLePrJVzuTYmJx84-iIySj91fGQ=',
      fullName: 'Jenika Chua',
      date: date,
      message: message,
      highlightMessage: true,
      simplifyDate: true,
      onPressed: () => router.push(
        Routes.inboxInvitesReceivedProfile.path,
      ),
    );
  }

  List<InboxListTile> _createTestTiles(
      BuildContext context, String tileMessage) {
    List<InboxListTile> tiles = [];
    for (int i = 0; i <= 12; i++) {
      tiles.add(
        _createTestTile(context, tileMessage, i),
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
          indent: Insets.widgetSmallInset,
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
      scaffoldModel.setInboxScaffold(context);
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
    DefaultTabController.of(context).animateTo(tabBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: Insets.widgetSmallInset,
          end: Insets.widgetMediumInset,
        ),
        child: ListView(
          children: _createContentList(
            _createTestTiles(context, l10n.inboxInvitesReceivedMessage),
          ),
        ),
      ),
    );
  }
}
