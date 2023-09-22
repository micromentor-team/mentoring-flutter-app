import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/models/notifications_model.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../widgets/atoms/notification_bubble.dart';

class DrawerFactory {
  DrawerFactory._private();

  static Drawer? createInboxDrawer() {
    return Drawer(
      child: Builder(builder: (context) {
        final AppLocalizations l10n = AppLocalizations.of(context)!;
        final GoRouter router = GoRouter.of(context);
        final ThemeData theme = Theme.of(context);
        return Consumer<NotificationsModel>(
            builder: (context, notificationsModel, _) {
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
                trailing: notificationsModel.inboxChatNotifications > 0
                    ? NotificationBubble(
                        notifications:
                            notificationsModel.inboxChatNotifications,
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
                trailing: notificationsModel.inboxInvitesNotifications > 0
                    ? NotificationBubble(
                        notifications:
                            notificationsModel.inboxInvitesNotifications,
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
                trailing: notificationsModel.inboxArchivedNotifications > 0
                    ? NotificationBubble(
                        notifications:
                            notificationsModel.inboxArchivedNotifications,
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
        });
      }),
    );
  }
}
