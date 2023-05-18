import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/settings/settings.dart';
import 'package:provider/provider.dart';

import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import '../../atoms/text_form_field_widget.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

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
                Icons.fingerprint,
              ),
            ),
            title: const Text(
              'Biometrics',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: biometrics ? Colors.blue : Colors.white),
                onPressed: () {
                  setState(() {
                    biometrics = !biometrics;
                  });
                },
                child: biometrics
                    ? const Text(
                        'On',
                        style: TextStyle(color: Colors.white),
                      )
                    : const Text('Off')),
          ),
          ListTile(
              leading: const SizedBox(
                width: 40.0,
                height: 40.0,
                child: Icon(
                  Icons.password,
                ),
              ),
              trailing: const SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Icon(Icons.arrow_forward_ios)),
              title: const Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              onTap: () => showDialog<void>(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    // String? currPass, newPass;
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: AlertDialog(
                        alignment: Alignment.center,
                        title: const Text(
                          'Change Password',
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormFieldWidget(
                                textController: TextEditingController(),
                                onPressed: (value) {
                                  // currPass = value;
                                },
                                label: 'Current Password',
                                obscureText: true),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormFieldWidget(
                                textController: TextEditingController(),
                                onPressed: (value) {
                                  // newPass = value;
                                },
                                label: 'New Password',
                                obscureText: true)
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content:
                                    Text('Your current password is changed.'),
                              ));
                              // await userProvider.updateUserPassword(currentPass: currPass, newPass: newPass);
                            },
                            child: const Text('Save '),
                          ),
                        ],
                      ),
                    );
                  })),
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
