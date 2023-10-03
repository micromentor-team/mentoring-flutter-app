import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class InvitationTile extends StatelessWidget {
  final String userName;
  final String userJobTitle;
  final Enum$ChannelInvitationStatus invitationStatus;
  final String? avatarUrl;
  final void Function() buttonOnPressed;

  const InvitationTile({
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
      minVerticalPadding: Insets.paddingSmall,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        child: Image(
          image: avatarUrl != null
              ? NetworkImage(avatarUrl!) as ImageProvider<Object>
              : const AssetImage(Assets.blankAvatar),
          width: Insets.paddingExtraLarge * 2,
          height: Insets.paddingExtraLarge * 2,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        userName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      titleTextStyle: theme.textTheme.titleSmall?.copyWith(
        color: Colors.black,
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
      trailing: SizedBox(
        width: Radii.avatarRadiusSmall * 2,
        height: Radii.avatarRadiusSmall * 2,
        child: TextButton(
          onPressed: buttonOnPressed,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
