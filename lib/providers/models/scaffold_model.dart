import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../utilities/scaffold_utils/appbar_factory.dart';
import '../../utilities/scaffold_utils/drawer_factory.dart';
import '../messages_provider.dart';

class ScaffoldModel extends ChangeNotifier {
  final MessagesProvider _messagesProvider;
  final InvitationsProvider _invitationsProvider;
  final UserProvider _userProvider;

  AppBar? _appBar;
  Drawer? _drawer;
  AsyncState _state = AsyncState.ready;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;
  AsyncState get state => _state;

  ScaffoldModel({required BuildContext context})
      : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _userProvider = Provider.of<UserProvider>(
          context,
          listen: false,
        ),
        _invitationsProvider = Provider.of<InvitationsProvider>(
          context,
          listen: false,
        );

  void _setParams({AppBar? appBar, Drawer? drawer}) {
    _appBar = appBar;
    _drawer = drawer;
    _state = AsyncState.ready;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void clear() {
    _appBar = null;
    _drawer = null;
    _state = AsyncState.ready;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void setAppBarTitleOnly({
    required BuildContext context,
    required String title,
  }) {
    _setParams(
      appBar: AppBarFactory.createTitleOnlyAppBar(title: title),
      drawer: null,
    );
  }

  Future<void> setInboxScaffold({required GoRouter router}) async {
    _state = AsyncState.loading;
    int chatsNotifications = 0;
    int archivedNotifications = 0;
    int invitesNotifications = 0;
    final allUnseenMessagesResult = await _messagesProvider.allUnseenMessages();
    final invitationsResult = await _invitationsProvider.getInboxInvitations();
    if (allUnseenMessagesResult.gqlQueryResult.hasException ||
        invitationsResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      chatsNotifications =
          allUnseenMessagesResult.response?.unseenMessages?.length ?? 0;
      archivedNotifications =
          allUnseenMessagesResult.response?.unseenArchivedMessages?.length ?? 0;
      invitesNotifications = invitationsResult
              .response?.channels?.pendingInvitations
              ?.where((element) => element.createdBy != _userProvider.user!.id)
              .length ??
          0;
    }
    _setParams(
      appBar: AppBarFactory.createInboxAppBar(
        router: router,
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
      drawer: DrawerFactory.createInboxDrawer(
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
        archivedNotifications: archivedNotifications,
      ),
    );
  }

  void setInviteReceivedDetailScaffold({required BuildContext context}) {
    _setParams(
      appBar: AppBarFactory.createInviteReceivedDetailAppBar(context: context),
      drawer: null,
    );
  }

  void setChannelMessagesScaffold({
    required BuildContext context,
    required String channelName,
    required String channelId,
    required bool isArchivedForUser,
    String? avatarUrl,
  }) {
    _setParams(
      appBar: AppBarFactory.createChannelMessagesAppBar(
        context: context,
        channelName: channelName,
        channelId: channelId,
        isArchivedForUser: isArchivedForUser,
        avatarUrl: avatarUrl,
      ),
      drawer: null,
    );
  }

  //TODO(m-rosario): Remove this once the real logout flow is defined by UX
  void setTestHomeScaffold() {
    _setParams(
      appBar: null,
      drawer: Drawer(
        child: Builder(
          builder: (context) {
            final GoRouter router = GoRouter.of(context);
            return ListView(
              children: [
                ListTile(
                  title: const Text("Logout"),
                  titleAlignment: ListTileTitleAlignment.center,
                  trailing: Icon(
                    Icons.logout_outlined,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onTap: () {
                    Provider.of<UserProvider>(
                      context,
                      listen: false,
                    ).signOutUser().then(
                      (void future) {
                        try {
                          Navigator.of(context).pop();
                          router.goNamed(Routes.root.name);
                        } catch (_) {}
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
