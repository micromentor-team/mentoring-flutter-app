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

  AppBar? _appBar;
  Drawer? _drawer;
  String? _lastRefreshRoute;
  AsyncState _state = AsyncState.ready;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;
  String? get lastRefreshRoute => _lastRefreshRoute;
  AsyncState get state => _state;

  ScaffoldModel({required BuildContext context})
      : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _invitationsProvider = Provider.of<InvitationsProvider>(
          context,
          listen: false,
        );

  void setLastRefreshRoute(String lastRefreshRoute) {
    _lastRefreshRoute = lastRefreshRoute;
  }

  void setParams({AppBar? appBar, Drawer? drawer}) {
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

  Future<void> setInboxScaffold({required GoRouter router}) async {
    _state = AsyncState.loading;
    int chatsNotifications = 0;
    int archivedNotifications = 0;
    int invitesNotifications = 0;
    final allUnseenMessagesResult = await _messagesProvider.allUnseenMessages();
    final receivedInvitationsResult =
        await _invitationsProvider.getReceivedInvitations(onlyPending: true);
    if (allUnseenMessagesResult.gqlQueryResult.hasException ||
        receivedInvitationsResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      chatsNotifications =
          allUnseenMessagesResult.response?.unseenMessages?.length ?? 0;
      archivedNotifications =
          allUnseenMessagesResult.response?.unseenArchivedMessages?.length ?? 0;
      invitesNotifications = receivedInvitationsResult.response?.length ?? 0;
    }
    setParams(
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

  //TODO(m-rosario): Remove this once the real logout flow is defined by UX
  void setTestHomeScaffold() {
    setParams(
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
