import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class InboxInvitationTile extends StatelessWidget {
  final String userName;
  final String userJobTitle;
  final Enum$ChannelInvitationStatus invitationStatus;
  final String? avatarUrl;
  final void Function() buttonOnPressed;

  const InboxInvitationTile({
    Key? key,
    required this.userName,
    required this.userJobTitle,
    required this.invitationStatus,
    this.avatarUrl,
    required this.buttonOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return ListTile(
      minVerticalPadding: Insets.paddingLarge,
      leading: CircleAvatar(
        radius: Radii.avatarRadiusSmall,
        backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
      ),
      title: Text(
        userName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      titleTextStyle: theme.textTheme.titleSmall?.copyWith(
        color: theme.colorScheme.secondary,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.paddingExtraSmall,
            ),
            child: Text(
              userJobTitle,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.tertiary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            _invitationText(l10n),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: SizedBox(
        width: Radii.avatarRadiusSmall * 2,
        height: Radii.avatarRadiusSmall * 2,
        child: ElevatedButton(
          onPressed: buttonOnPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.secondaryContainer,
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Radii.avatarRadiusSmall),
            ),
          ),
          child: Icon(
            Icons.navigate_next,
            color: Color(theme.colorScheme.onSecondaryContainer.value),
          ),
        ),
      ),
    );
  }

  String _invitationText(AppLocalizations l10n) {
    switch (invitationStatus) {
      case Enum$ChannelInvitationStatus.created:
        return l10n.homeInvitationRequested;
      case Enum$ChannelInvitationStatus.accepted:
        return l10n.homeInvitationAccepted;
      default:
        return 'UNDEFINED';
    }
  }
}
