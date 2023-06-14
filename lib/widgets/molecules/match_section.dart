import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/match_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class MatchSection extends StatelessWidget {
  const MatchSection({Key? key}) : super(key: key);

  List<Widget> _createMatchTiles() {
    //TODO(m-rosario): Call backend instead of using hardcoded mock data.
    return [
      _createNewMatchTile('Mentor 1', 'Seattle, WA, USA'),
      _createNewRequestTile('Mentor 2', 'Los Angeles, CA, USA'),
      _createNewRequestTile('Mentor 3', 'Nairobi, Kenya'),
    ];
  }

  MatchTile _createNewMatchTile(String userName, String userLocation) {
    return MatchTile(
      header: 'NEW MATCH',
      userName: userName,
      userLocation: userLocation,
      buttonText: 'MESSAGE',
      buttonOnPressed: () => {
        //TODO(m-rosario): Implement MESSAGE functionality.
      },
    );
  }

  MatchTile _createNewRequestTile(String userName, String userLocation) {
    return MatchTile(
      header: 'NEW REQUEST',
      userName: userName,
      userLocation: userLocation,
      buttonText: 'VIEW REQUEST',
      buttonOnPressed: () => {
        //TODO(m-rosario): Implement VIEW REQUEST functionality.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> matchTiles = _createMatchTiles();
    return SectionTile(
      title: 'You have ${matchTiles.length} new matches and requests',
      child: Column(
        children: matchTiles,
      ),
    );
  }
}
