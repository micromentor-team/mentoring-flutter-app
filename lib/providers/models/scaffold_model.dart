import 'package:flutter/material.dart';

import '../../utilities/scaffold_utils/appbar_factory.dart';
import '../../utilities/scaffold_utils/drawer_factory.dart';

class ScaffoldModel extends ChangeNotifier {
  AppBar? _appBar;
  Drawer? _drawer;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;

  void _setParams(AppBar? appBar, Drawer? drawer) {
    _appBar = appBar;
    _drawer = drawer;
    notifyListeners();
  }

  void clear() {
    _appBar = null;
    _drawer = null;
    notifyListeners();
  }

  void setInboxScaffold(BuildContext context) {
    //TODO(m-rosario): Get notification data from backend call.
    const int chatsNotifications = 1;
    const int invitesNotifications = 1;
    _setParams(
      AppBarFactory.createInboxAppBar(
        context: context,
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
      DrawerFactory.createInboxDrawer(
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
    );
  }

  void setInviteReceivedDetailScaffold(BuildContext context) {
    _setParams(
      AppBarFactory.createInviteReceivedDetailAppBar(context: context),
      null,
    );
  }

  void setChannelMessagesScaffold(
    BuildContext context,
    String channelName,
    String? avatarUrl,
  ) {
    _setParams(
      AppBarFactory.createChannelMessagesAppBar(
        context: context,
        channelName: channelName,
        avatarUrl: avatarUrl,
      ),
      null,
    );
  }
}
