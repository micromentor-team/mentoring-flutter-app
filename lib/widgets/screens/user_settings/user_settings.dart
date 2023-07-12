import 'package:flutter/material.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: const SizedBox(
              width: 40.0,
              height: 40.0,
              child: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
            ),
            title: const Text(
              'Delete Account',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.red,
              ),
            ),
            onTap: () => showDialog<void>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Delete User'),
                content: const Text('Are you sure?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () async {
                      await userProvider.deleteUser();

                      if (context.mounted) {
                        final navigator = Navigator.of(context);
                        navigator.pushNamedAndRemoveUntil(
                            '/', (Route<dynamic> route) => false);
                      }
                    },
                    child: const Text('Delete'),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
