import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../../constants/constants.dart';
import '../../../../models/inbox_model.dart';
import '../../../shared/notification_bubble.dart';

class InboxDrawerFactory {
  InboxDrawerFactory._private();

  static Drawer? createInboxDrawer() {
    return Drawer(
      child: Builder(builder: (context) {
        final AppLocalizations l10n = AppLocalizations.of(context)!;
        final GoRouter router = GoRouter.of(context);
        final ThemeData theme = Theme.of(context);
        return Selector<InboxModel, Tuple3<int, int, int>>(
            selector: (_, inboxModel) => Tuple3(
                  inboxModel.inboxChatNotifications,
                  inboxModel.inboxInvitesNotifications,
                  inboxModel.inboxArchivedNotifications,
                ),
            builder: (_, tuple3, __) {
              final inboxChatNotifications = tuple3.item1;
              final inboxInvitesNotifications = tuple3.item2;
              final inboxArchivedNotifications = tuple3.item3;
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
                    title: Text(l10n.inboxChatsTitle),
                    trailing: inboxChatNotifications > 0
                        ? NotificationBubble(
                            notifications: inboxChatNotifications,
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
                    title: Text(l10n.inboxInvitesTitle),
                    trailing: inboxInvitesNotifications > 0
                        ? NotificationBubble(
                            notifications: inboxInvitesNotifications,
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
                    title: Text(l10n.inboxArchivedChatsTitle),
                    trailing: inboxArchivedNotifications > 0
                        ? NotificationBubble(
                            notifications: inboxArchivedNotifications,
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
