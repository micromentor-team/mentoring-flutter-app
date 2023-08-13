import 'package:flutter/material.dart';

import '../../utilities/scaffold_utils/appbar_factory.dart';
import '../../utilities/scaffold_utils/drawer_factory.dart';

class ScaffoldModel extends ChangeNotifier {
  AppBar? _appBar;
  Drawer? _drawer;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;

  void _setParams({AppBar? appBar, Drawer? drawer}) {
    _appBar = appBar;
    _drawer = drawer;
    notifyListeners();
  }

  void clear() {
    _appBar = null;
    _drawer = null;
    notifyListeners();
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

  void setInboxScaffold({required BuildContext context}) {
    //TODO(m-rosario): Get notification data from backend call.
    const int chatsNotifications = 1;
    const int invitesNotifications = 1;
    _setParams(
      appBar: AppBarFactory.createInboxAppBar(
        context: context,
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
      drawer: DrawerFactory.createInboxDrawer(
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
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
}
