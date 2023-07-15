import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/inbox_list_tile.dart';

class InboxArchivedChatsScreen extends StatelessWidget {
  const InboxArchivedChatsScreen({super.key});

  Widget _getTestTile(int notifications) {
    return InboxListTile(
      avatarUrl:
          'https://media.istockphoto.com/id/1280371040/photo/confident-stylish-european-mature-middle-aged-woman-standing-at-workplace-stylish-older.jpg?s=612x612&w=0&k=20&c=AntzoG_Z1hN6tYVBXbu58Rvz4jweBYa8669bV75yWRw=',
      fullName: 'Delia Joyce',
      date: DateTime.now(),
      message:
          'Lorem ipsum dolor sit amet consectetur. Enim id interdum pulvinar eget dolor sed sit enim.',
      notifications: notifications,
    );
  }

  List<Widget> _getTestTiles() {
    List<Widget> tiles = [_getTestTile(1)];
    for (int i = 0; i < 10; i++) {
      tiles.addAll([
        const Divider(
          indent: Insets.widgetSmallInset,
          endIndent: Insets.widgetSmallInset,
        ),
        _getTestTile(0),
      ]);
    }
    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Insets.widgetSmallInset),
        child: ListView(
          children: _getTestTiles(),
        ),
      ),
    );
  }
}
