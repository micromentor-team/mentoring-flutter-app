import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class InvitationSection extends StatelessWidget {
  const InvitationSection({Key? key}) : super(key: key);

  List<Widget> _createInvitationTiles(AppLocalizations l10n) {
    //TODO(m-rosario): Call backend instead of using hardcoded mock data.
    return [
      _createInvitationTile(
        l10n,
        'Moshe Goldberg',
        'Co-founder, CEO - Goldberg & Co.',
        InvitationTileType.requested,
        'https://images.squarespace-cdn.com/content/v1/530ce8d1e4b067ea68a9f821/1612484390216-5NVBC0NJJTFP1OPNRU6F/corporate%2Bbusiness%2Bheadshots%2Blos%2Bangeles_Danielle%2BSpires.jpg',
      ),
      Components.indentedSubDivider,
      _createInvitationTile(
        l10n,
        'Mila Dovonik',
        'Co-founder, CEO - Mila Networks',
        InvitationTileType.accepted,
        'https://justeconomyinstitute.org/wp-content/uploads/2021/07/kenya.jpg',
      ),
    ];
  }

  InvitationTile _createInvitationTile(
    AppLocalizations l10n,
    String userName,
    String userJobTitle,
    InvitationTileType invitationType,
    String? avatarUrl,
  ) {
    return InvitationTile(
      userName: userName,
      userJobTitle: userJobTitle,
      invitationTileType: invitationType,
      avatarUrl: avatarUrl,
      buttonOnPressed: () => {
        //TODO(m-rosario): Open profile when clicked.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<Widget> invitationTiles = _createInvitationTiles(l10n);
    return SectionTile(
      title: l10n.homeInvitationSectionTitle,
      addTopDivider: true,
      removeBottomPadding: true,
      child: Column(
        children: invitationTiles,
      ),
    );
  }
}
