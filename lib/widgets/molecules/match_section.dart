import 'package:flutter/material.dart';

import 'package:mm_flutter_app/widgets/atoms/match_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class MatchSection extends StatefulWidget {
  const MatchSection({Key? key}) : super(key: key);

  @override
  State<MatchSection> createState() => _MatchSectionState();
}

class _MatchSectionState extends State<MatchSection> {
  List<Widget> _matchTiles = [];

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
    _matchTiles = _createMatchTiles();
    return SectionTile(
      title: 'You have ${_matchTiles.length} new matches and requests',
      child: Column(
        children: _matchTiles,
      ),
    );
  }
}
