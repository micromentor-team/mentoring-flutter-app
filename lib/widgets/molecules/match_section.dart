import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/widgets/atoms/match_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class MatchSection extends StatelessWidget {
  const MatchSection({Key? key}) : super(key: key);

  List<Widget> _createMatchTiles(AppLocalizations l10n) {
    //TODO(m-rosario): Call backend instead of using hardcoded mock data.
    return [
      _createNewMatchTile(l10n, 'Naomi Murphy', 'Seattle, WA, USA',
          'https://images.squarespace-cdn.com/content/v1/530ce8d1e4b067ea68a9f821/1612484390216-5NVBC0NJJTFP1OPNRU6F/corporate%2Bbusiness%2Bheadshots%2Blos%2Bangeles_Danielle%2BSpires.jpg'),
      _createNewRequestTile(l10n, 'Brandon Smith', 'Los Angeles, CA, USA',
          'https://i.pinimg.com/originals/58/50/26/585026bb655fdacad5a196fe9b84c5ef.jpg'),
      _createNewRequestTile(l10n, 'Aluna Cherono', 'Nairobi, Kenya',
          'https://justeconomyinstitute.org/wp-content/uploads/2021/07/kenya.jpg'),
    ];
  }

  MatchTile _createNewMatchTile(AppLocalizations l10n, String userName,
      String userLocation, String? avatarUrl) {
    return MatchTile(
      header: l10n.homeMatchNewMatch,
      userName: userName,
      userLocation: userLocation,
      buttonText: l10n.homeMatchNewMatchMessage,
      avatarUrl: avatarUrl,
      buttonOnPressed: () => {
        //TODO(m-rosario): Implement MESSAGE functionality.
      },
    );
  }

  MatchTile _createNewRequestTile(AppLocalizations l10n, String userName,
      String userLocation, String? avatarUrl) {
    return MatchTile(
      header: l10n.homeMatchNewRequest,
      userName: userName,
      userLocation: userLocation,
      buttonText: l10n.homeMatchNewRequestView,
      avatarUrl: avatarUrl,
      buttonOnPressed: () => {
        //TODO(m-rosario): Implement VIEW REQUEST functionality.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Widget> matchTiles = _createMatchTiles(l10n);
    return SectionTile(
      title: l10n.homeMatchSectionTitle(matchTiles.length),
      child: Column(
        children: matchTiles,
      ),
    );
  }
}
