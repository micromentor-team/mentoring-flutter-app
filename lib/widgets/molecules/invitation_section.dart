import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/invitation_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 2;
  const InvitationSection({Key? key}) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  bool _isLongList = false;
  bool _isExpanded = false;

  List<Widget> _createInvitationTiles(AppLocalizations l10n) {
    final List<_Invitation> invitations = _getInvitations();
    if (invitations.length > InvitationSection.maxTilesToShow) {
      _isLongList = true;
    }
    List<Widget> invitationsContent = [];
    int tilesShown = 0;
    while (tilesShown < invitations.length &&
        (_isExpanded || tilesShown < InvitationSection.maxTilesToShow)) {
      if (invitationsContent.length.isOdd) {
        invitationsContent.add(Components.indentedSubDivider);
      }
      invitationsContent
          .add(_createInvitationTile(l10n, invitations[tilesShown]));
      tilesShown++;
    }
    return invitationsContent;
  }

  InvitationTile _createInvitationTile(
    AppLocalizations l10n,
    _Invitation invitation,
  ) {
    return InvitationTile(
      userName: invitation.userName,
      userJobTitle: invitation.userJobTitle,
      invitationTileType: invitation.invitationType,
      avatarUrl: invitation.avatarUrl,
      buttonOnPressed: () => {
        //TODO(m-rosario): Open profile when clicked.
      },
    );
  }

  List<_Invitation> _getInvitations() {
    //TODO(m-rosario): Call backend instead of using hardcoded mock data.
    final List<_Invitation> invitations = [
      _Invitation(
        userName: 'Moshe Goldberg',
        userJobTitle: 'Co-founder, CEO - Goldberg & Co.',
        invitationType: InvitationTileType.requested,
        avatarUrl:
            'https://images.squarespace-cdn.com/content/v1/530ce8d1e4b067ea68a9f821/1612484390216-5NVBC0NJJTFP1OPNRU6F/corporate%2Bbusiness%2Bheadshots%2Blos%2Bangeles_Danielle%2BSpires.jpg',
      ),
      _Invitation(
        userName: 'Mila Dovonik',
        userJobTitle: 'Co-founder, CEO - Mila Networks',
        invitationType: InvitationTileType.accepted,
        avatarUrl:
            'https://justeconomyinstitute.org/wp-content/uploads/2021/07/kenya.jpg',
      ),
      _Invitation(
        userName: 'Brandon Smith',
        userJobTitle: 'Founder, CEO - BS Inc.',
        invitationType: InvitationTileType.requested,
        avatarUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKFZ-wy3m90LUavZZIb5dpNDduYghKF-7pSg&usqp=CAU',
      ),
      _Invitation(
        userName: 'Catalina Echevarria',
        userJobTitle: 'COO - ACME Corporation',
        invitationType: InvitationTileType.accepted,
        avatarUrl:
            'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=',
      ),
    ];
    return invitations;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final List<Widget> invitationTiles = _createInvitationTiles(l10n);
    return invitationTiles.isEmpty
        ? SizedBox.fromSize(
            size: const Size(0, 0),
          )
        : SectionTile(
            title: l10n.homeInvitationSectionTitle,
            addTopDivider: true,
            removeBottomPadding: true,
            seeAllOnPressed:
                _isLongList ? () => setState(() => _isExpanded = true) : null,
            seeLessOnPressed:
                _isLongList ? () => setState(() => _isExpanded = false) : null,
            child: Column(
              children: invitationTiles,
            ),
          );
  }
}

class _Invitation {
  final String userName;
  final String userJobTitle;
  final InvitationTileType invitationType;
  final String? avatarUrl;

  _Invitation({
    required this.userName,
    required this.userJobTitle,
    required this.invitationType,
    this.avatarUrl,
  });
}
