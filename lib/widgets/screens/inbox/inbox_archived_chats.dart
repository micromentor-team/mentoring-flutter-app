import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/debug_logger.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/atoms/dismissible_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/inbox_list_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

class InboxArchivedChatsScreen extends StatefulWidget {
  const InboxArchivedChatsScreen({super.key});

  @override
  State<InboxArchivedChatsScreen> createState() =>
      _InboxArchivedChatsScreenState();
}

class _InboxArchivedChatsScreenState extends State<InboxArchivedChatsScreen>
    with RouteAwareMixin<InboxArchivedChatsScreen> {
  List<DismissibleTile> tiles = [];

  DismissibleTile _createTestTile(int notifications, int tileIndex) {
    // TODO(m-rosario): Replace mock data with backend data.
    return DismissibleTile(
      tileId: tileIndex.toString(),
      onDismissed: () {
        DebugLogger.debug('Dismissed tile #$tileIndex');
        int tileIndexToRemove = -1;
        for (int i = 0; i < tiles.length; i++) {
          if (tiles[i].tileId == tileIndex.toString()) {
            tileIndexToRemove = i;
            break;
          }
        }
        setState(() {
          tiles.removeAt(tileIndexToRemove);
        });
      },
      icon: Icons.unarchive_outlined,
      child: InboxListTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1280371040/photo/confident-stylish-european-mature-middle-aged-woman-standing-at-workplace-stylish-older.jpg?s=612x612&w=0&k=20&c=AntzoG_Z1hN6tYVBXbu58Rvz4jweBYa8669bV75yWRw=',
        fullName: 'Delia Joyce',
        date: DateTime.now().subtract(Duration(days: tileIndex)),
        message:
            'Lorem ipsum dolor sit amet consectetur. Enim id interdum pulvinar eget dolor sed sit enim.',
        notifications: notifications,
        onPressed: () => DebugLogger.warning('TODO: NOT IMPLEMENTED.'),
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