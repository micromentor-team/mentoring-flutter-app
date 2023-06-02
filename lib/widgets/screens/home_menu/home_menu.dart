import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/user_settings/user_settings.dart';
import 'package:provider/provider.dart';

import '../profile/profile_screen.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Text(
                  '${user?.initials}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                '${user?.fullName}',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const SizedBox(
                width: 40.0,
                height: 40.0,
                child: Icon(
                  Icons.settings,
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserSettings(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const SizedBox(
                width: 40.0,
                height: 40.0,
                child: Icon(
                  Icons.logout,
                ),
              ),
              title: const Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onTap: () => showDialog<void>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Sign Out'),
                  content: const Text('Are you sure?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      key: const Key('yesSignOut'),
                      onPressed: () async {
                        await userProvider.signOutUser();

                        if (context.mounted) {
                          final navigator = Navigator.of(context);
                          navigator.pushNamedAndRemoveUntil(
                              '/', (Route<dynamic> route) => false);
                        }
                      },
                      child: const Text('Sign out'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
