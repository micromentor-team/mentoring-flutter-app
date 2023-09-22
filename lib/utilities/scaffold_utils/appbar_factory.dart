import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/models/notifications_model.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/user_popup_menu_button.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../widgets/atoms/notification_bubble.dart';

class AppBarFactory {
  AppBarFactory._private();

  static AppBar? createTitleOnlyAppBar({required String title}) {
    return AppBar(title: Text(title));
  }

  static AppBar? createInboxAppBar({
    required GoRouter router,
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
          Consumer<NotificationsModel>(
            builder: (context, notificationsModel, _) {
              if (notificationsModel.inboxNotifications == 0) {
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
                    notifications: notificationsModel.inboxNotifications,
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
            router.location,
          );
        },
      ),
      centerTitle: true,
      bottom: router.location.startsWith(Routes.inboxInvites.path)
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
        l10n.inboxTitleInviteReceived,
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
        l10n.inboxTitleInviteSent,
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
