import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';

class DrawerFactory {
  DrawerFactory._private();

  static Drawer? createInboxDrawer({
    required int chatsNotifications,
    required int invitesNotifications,
  }) {
    return Drawer(
      child: Builder(builder: (context) {
        final AppLocalizations l10n = AppLocalizations.of(context)!;
        final GoRouter router = GoRouter.of(context);
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
                  ? Text(
                      chatsNotifications > Limits.maxNotificationsDisplayed
                          ? Identifiers.notificationOverflow
                          : chatsNotifications.toString(),
                    )
                  : null,
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxChats);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add_outlined),
              title: Text(l10n.inboxTitleInvites),
              trailing: invitesNotifications > 0
                  ? Text(
                      invitesNotifications > Limits.maxNotificationsDisplayed
                          ? Identifiers.notificationOverflow
                          : invitesNotifications.toString(),
                    )
                  : null,
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxInvitesReceived);
              },
            ),
            ListTile(
              leading: const Icon(Icons.folder_outlined),
              title: Text(l10n.inboxTitleArchivedChats),
              onTap: () {
                // Close Drawer
                Navigator.of(context).pop();
                router.push(Routes.inboxArchived);
              },
            ),
          ],
        );
      }),
    );
  }
}
