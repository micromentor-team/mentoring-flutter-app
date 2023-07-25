import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

class InboxChatsScreen extends StatefulWidget {
  const InboxChatsScreen({super.key});

  @override
  State<InboxChatsScreen> createState() => _InboxChatsScreenState();
}

class _InboxChatsScreenState extends State<InboxChatsScreen>
    with RouteAwareMixin<InboxChatsScreen> {
  List<DismissibleTile> tiles = [];

  DismissibleTile _createTestTile(int notifications, int tileIndex) {
    // TODO(m-rosario): Replace mock data with backend data.
    final String mockChannelId = tileIndex.toString();
    return DismissibleTile(
      tileId: mockChannelId,
      onDismissed: () {
        DebugLogger.debug('Dismissed tile #$mockChannelId');
        int tileIndexToRemove = -1;
        for (int i = 0; i < tiles.length; i++) {
          if (tiles[i].tileId == mockChannelId) {
            tileIndexToRemove = i;
            break;
          }
        }
        setState(() {
          tiles.removeAt(tileIndexToRemove);
        });
      },
      icon: Icons.archive_outlined,
      child: InboxListTile(
        avatarUrl:
            'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
        fullName: 'Azadeh Sana',
        date: DateTime.now().subtract(Duration(days: tileIndex)),
        message:
            'Lorem ipsum dolor sit amet consectetur. Enim id interdum pulvinar eget dolor sed sit enim.',
        notifications: notifications,
        onPressed: () => context.push('${Routes.inboxChats}/$mockChannelId'),
      ),
    );
  }

  void _createTestTiles() {
    for (int i = 0; i <= 8; i++) {
      tiles.add(
        _createTestTile(8 - i, i),
      );
    }
  }

  List<Widget> _createContentList() {
    if (tiles.isEmpty) {
      return [];
    }
    List<Widget> contentList = [tiles.first];
    for (int i = 1; i < tiles.length; i++) {
      contentList.addAll([
        const Divider(
          height: 0,
          indent: Insets.widgetMediumInset,
          endIndent: Insets.widgetMediumInset,
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
  }

  @override
  void initState() {
    super.initState();
    _createTestTiles();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> contentList = _createContentList();
    return SafeArea(
      child: ListView(
        children: contentList,
      ),
    );
  }
}
