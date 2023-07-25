import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/atoms/notification_bubble.dart';

class AppBarFactory {
  AppBarFactory._private();

  static AppBar? createInboxAppBar({
    required BuildContext context,
    required int chatsNotifications,
    required int invitesNotifications,
  }) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    final totalNotifications = chatsNotifications + invitesNotifications;
    return AppBar(
      leading: Stack(
        children: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          if (totalNotifications > 0)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: Insets.widgetSmallInset,
                start: Insets.widgetSmallInset,
              ),
              child: NotificationBubble(
                notifications: totalNotifications,
              ),
            ),
        ],
      ),
      title: _getInboxAppBarTitle(theme, l10n, router.location),
      centerTitle: true,
      bottom: router.location.startsWith(Routes.inboxInvites)
          ? TabBar(
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.mail_outline),
                      const SizedBox(width: Insets.widgetSmallInset),
                      Text(l10n.inboxInvitesReceived),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.send_outlined),
                      const SizedBox(width: Insets.widgetSmallInset),
                      Text(l10n.inboxInvitesSent),
                    ],
                  ),
                ),
              ],
              onTap: (index) {
                String newRoute;
                if (index == 1) {
                  newRoute = Routes.inboxInvitesSent;
                } else {
                  newRoute = Routes.inboxInvitesReceived;
                }
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  router.push(newRoute);
                });
              },
            )
          : null,
    );
  }

  static AppBar createChannelMessagesAppBar({
    required BuildContext context,
    required String channelName,
    String? avatarUrl,
  }) {
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    return AppBar(
      toolbarHeight: Dimensions.channelMessagesAppBarHeight,
      leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left),
        onPressed: () => router.pop(),
      ),
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              Radii.roundedRectRadius,
            ),
            child: Image(
              image: avatarUrl != null
                  ? NetworkImage(avatarUrl) as ImageProvider<Object>
                  : const AssetImage(Assets.blankAvatar),
              width: Dimensions.channelMessagesAppBarAvatarLength,
              height: Dimensions
                  .channelMessagesAppBarAvatarLength, // Height of the avatar
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: Insets.widgetMediumInset,
          ),
          Text(
            channelName,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () => {}, //TODO(m-rosario): Chat menu
        )
      ],
    );
  }

  static Text _getInboxAppBarTitle(
      ThemeData theme, AppLocalizations l10n, String targetRoute) {
    final String title;
    if (targetRoute == Routes.inboxArchived) {
      title = l10n.inboxTitleArchivedChats;
    } else if (targetRoute == Routes.inboxInvitesReceived ||
        targetRoute == Routes.inboxInvitesSent) {
      title = l10n.inboxTitleInvites;
    } else {
      title = l10n.inboxTitleChats;
    }
    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      ),
    );
  }
}