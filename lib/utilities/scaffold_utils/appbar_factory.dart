import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/utilities/errors/errors.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/report_or_block_menu_button.dart';

import '../../constants/app_constants.dart';
import '../../widgets/atoms/notification_bubble.dart';

class AppBarFactory {
  AppBarFactory._private();

  static AppBar? createTitleOnlyAppBar({required String title}) {
    return AppBar(title: Text(title));
  }

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
                top: Insets.paddingSmall,
                start: Insets.paddingSmall,
              ),
              child: NotificationBubble(
                notifications: totalNotifications,
              ),
            ),
        ],
      ),
      title: _getInboxAppBarTitle(theme, l10n, router.location),
      centerTitle: true,
      bottom: router.location.startsWith(Routes.inboxInvites.path)
          ? TabBar(
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.mail_outline),
                      const SizedBox(width: Insets.paddingSmall),
                      Text(l10n.inboxInvitesReceived),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.send_outlined),
                      const SizedBox(width: Insets.paddingSmall),
                      Text(l10n.inboxInvitesSent),
                    ],
                  ),
                ),
              ],
              onTap: (index) {
                String newRoute;
                if (index == 1) {
                  newRoute = Routes.inboxInvitesSent.path;
                } else {
                  newRoute = Routes.inboxInvitesReceived.path;
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
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    return AppBar(
      toolbarHeight: 80.0,
      leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left),
        onPressed: () => router.pop(),
      ),
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              Radii.roundedRectRadiusSmall,
            ),
            child: Image(
              image: avatarUrl != null
                  ? NetworkImage(avatarUrl) as ImageProvider<Object>
                  : const AssetImage(Assets.blankAvatar),
              width: 48.0,
              height: 48.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: Insets.paddingMedium,
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
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Text(l10n.messagesActionArchive),
            ),
            PopupMenuItem(
              value: 1,
              child: Text(l10n.messagesActionBlock),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(l10n.messagesActionReport),
            ),
          ],
          onSelected: (value) {
            switch (value) {
              case 0:
                // TODO(m-rosario): Archive chat
                break;
              case 1:
                // TODO(m-rosario): Block user
                break;
              case 2:
                // TODO(m-rosario): Report user
                break;
              default:
                throw UnexpectedStateError(
                  message: 'Invalid PopupMenuItem value: $value ',
                );
            }
          },
        ),
      ],
    );
  }

  static AppBar createInviteReceivedDetailAppBar({
    required BuildContext context,
  }) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final GoRouter router = GoRouter.of(context);
    final ThemeData theme = Theme.of(context);
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          router.pop();
        },
      ),
      title: Text(
        l10n.newInvite,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      centerTitle: false,
      actions: [
        ReportOrBlockMenuButton(l10n: l10n),
      ],
    );
  }

  static Text _getInboxAppBarTitle(
      ThemeData theme, AppLocalizations l10n, String targetRoute) {
    final String title;
    if (targetRoute == Routes.inboxArchived.path) {
      title = l10n.inboxTitleArchivedChats;
    } else if (targetRoute == Routes.inboxInvitesReceived.path ||
        targetRoute == Routes.inboxInvitesSent.path) {
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
