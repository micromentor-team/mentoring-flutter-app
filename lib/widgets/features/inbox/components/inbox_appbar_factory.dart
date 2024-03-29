import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/inbox_model.dart';
import '../../../shared/notification_bubble.dart';
import '../../../shared/user_popup_menu_button.dart';

class InboxAppBarFactory {
  InboxAppBarFactory._private();

  static AppBar? createInboxAppBar({
    required GoRouter router,
    required String currentRoute,
  }) {
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
          Selector<InboxModel, int>(
            selector: (_, inboxModel) => inboxModel.inboxNotifications,
            builder: (_, inboxNotifications, __) {
              if (inboxNotifications == 0) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: Insets.paddingExtraSmall,
                  end: Insets.paddingSmall,
                ),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: NotificationBubble(
                    notifications: inboxNotifications,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      title: Builder(
        builder: (context) {
          return _getInboxAppBarTitle(
            Theme.of(context),
            AppLocalizations.of(context)!,
            currentRoute,
          );
        },
      ),
      centerTitle: true,
      bottom: currentRoute.startsWith(Routes.inboxInvites.path)
          ? TabBar(
              tabs: [
                Tab(
                  child: Builder(
                    builder: (context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.mail_outline),
                          const SizedBox(width: Insets.paddingSmall),
                          Text(
                            AppLocalizations.of(context)!.inboxInvitesReceived,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Tab(
                  child: Builder(
                    builder: (context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.send_outlined),
                          const SizedBox(width: Insets.paddingSmall),
                          Text(
                            AppLocalizations.of(context)!.inboxInvitesSent,
                          ),
                        ],
                      );
                    },
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
    required String userFullName,
    required String channelId,
    required bool isArchivedForUser,
    required String userId,
    String? avatarUrl,
  }) {
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    return AppBar(
      toolbarHeight: Dimensions.customToolbarHeight,
      leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left),
        onPressed: () => router.push(
          isArchivedForUser
              ? Routes.inboxArchived.path
              : Routes.inboxChats.path,
        ),
      ),
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              Radii.roundedRectRadiusSmall,
            ),
            child: InkWell(
              onTap: () => router.push('${Routes.profile.path}/$userId'),
              child: Image(
                image: avatarUrl != null
                    ? NetworkImage(avatarUrl) as ImageProvider<Object>
                    : const AssetImage(Assets.blankAvatar),
                width: 48.0,
                height: 48.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: Insets.paddingMedium,
          ),
          Text(
            userFullName,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
      actions: [
        UserPopupMenuButton(
          includeArchiveOption: !isArchivedForUser,
          includeUnarchiveOption: isArchivedForUser,
          userFullName: userFullName,
          userId: userId,
          channelId: channelId,
        ),
      ],
    );
  }

  static AppBar createInviteReceivedDetailAppBar({
    required BuildContext context,
    required String userFullName,
    required String userId,
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
        l10n.inboxInvitesReceivedTitle,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      centerTitle: false,
      actions: [
        UserPopupMenuButton(
          userFullName: userFullName,
          userId: userId,
        ),
      ],
    );
  }

  static AppBar createInviteSentDetailAppBar({
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
        l10n.inboxInvitesSentTitle,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      centerTitle: false,
    );
  }

  static Text _getInboxAppBarTitle(
      ThemeData theme, AppLocalizations l10n, String targetRoute) {
    final String title;
    if (targetRoute == Routes.inboxArchived.path) {
      title = l10n.inboxArchivedChatsTitle;
    } else if (targetRoute == Routes.inboxInvitesReceived.path ||
        targetRoute == Routes.inboxInvitesSent.path) {
      title = l10n.inboxInvitesTitle;
    } else {
      title = l10n.inboxChatsTitle;
    }
    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      ),
    );
  }
}
