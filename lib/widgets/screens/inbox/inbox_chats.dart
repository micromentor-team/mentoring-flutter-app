import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/inbox_list_tile.dart';

class InboxChatsScreen extends StatelessWidget {
  const InboxChatsScreen({super.key});

  Widget _getTestTile(int notifications) {
    return InboxListTile(
      avatarUrl:
          'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
      fullName: 'Azadeh Sana',
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
