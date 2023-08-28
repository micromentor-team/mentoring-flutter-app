import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/atoms/notification_bubble.dart';

class DrawerFactory {
  DrawerFactory._private();

  static Drawer? createInboxDrawer({
    required int chatsNotifications,
    required int invitesNotifications,
    required int archivedNotifications,
  }) {
    return Drawer(
      child: Builder(builder: (context) {
        final AppLocalizations l10n = AppLocalizations.of(context)!;
        final GoRouter router = GoRouter.of(context);
        final ThemeData theme = Theme.of(context);
        return ListView(
          children: [
            SizedBox(
              height: Dimensions.drawerHeaderHeight,
              child: DrawerHeader(
                child: Text(l10n.inboxTitle),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble_outline),
              title: Text(l10n.inboxTitleChats),
              trailing: chatsNotifications > 0
                  ? NotificationBubble(
                      notifications: chatsNotifications,
                      enlarge: true,
                    )
                  : null,
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxChats.path);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add_outlined),
              title: Text(l10n.inboxTitleInvites),
              trailing: invitesNotifications > 0
                  ? NotificationBubble(
                      notifications: invitesNotifications,
                      enlarge: true,
                    )
                  : null,
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxInvitesReceived.path);
              },
            ),
            ListTile(
              leading: const Icon(Icons.inventory_2_outlined),
              title: Text(l10n.inboxTitleArchivedChats),
              trailing: archivedNotifications > 0
                  ? NotificationBubble(
                      notifications: archivedNotifications,
                      bubbleColor: Colors.transparent,
                      textColor: theme.colorScheme.onBackground,
                      enlarge: true,
                    )
                  : null,
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxArchived.path);
              },
            ),
          ],
        );
      }),
    );
  }
}
