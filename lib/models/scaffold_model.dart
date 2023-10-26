import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../services/graphql/providers/user_provider.dart';
import 'inbox_model.dart';

class ScaffoldModel extends ChangeNotifier {
  AppBar? _appBar;
  Drawer? _drawer;
  bool _hideNavBar = false;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;
  bool get hideNavBar => _hideNavBar;

  ScaffoldModel({required BuildContext context});

  void setParams({AppBar? appBar, Drawer? drawer, bool hideNavBar = false}) {
    _appBar = appBar;
    _drawer = drawer;
    _hideNavBar = hideNavBar;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void clear() {
    _appBar = null;
    _drawer = null;
    _hideNavBar = false;
    if (hasListeners) {
      notifyListeners();
    }
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
                          Provider.of<InboxModel>(
                            context,
                            listen: false,
                          ).cancelDataPolling();
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
