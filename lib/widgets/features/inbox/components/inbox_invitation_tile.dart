import 'package:flutter/material.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../constants/constants.dart';

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
    return ListTile(
      minVerticalPadding: Insets.paddingExtraSmall,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        child: Image(
          image: avatarUrl != null
              ? NetworkImage(avatarUrl!) as ImageProvider<Object>
              : const AssetImage(Assets.blankAvatar),
          width: 56,
          height: 56,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        userName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      titleTextStyle: theme.textTheme.titleSmall?.copyWith(
        color: theme.colorScheme.onSurface,
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
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.secondary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: buttonOnPressed,
        icon: Icon(
          Icons.arrow_forward_ios,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
