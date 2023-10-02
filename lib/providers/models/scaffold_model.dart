import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/models/inbox_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';

class ScaffoldModel extends ChangeNotifier {
  AppBar? _appBar;
  Drawer? _drawer;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;

  ScaffoldModel({required BuildContext context});

  void setParams({AppBar? appBar, Drawer? drawer}) {
    _appBar = appBar;
    _drawer = drawer;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void clear() {
    _appBar = null;
    _drawer = null;
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
