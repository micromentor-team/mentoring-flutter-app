import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/screens/signIn/textFormFieldWidget.dart';
import 'package:mm_flutter_app/widgets/screens/user_settings/user_settings.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user/user_provider.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    Key? key,
  }) : super(key: key);

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
              onTap: () {},
            ),
            ListTile(
              leading: const SizedBox(
                width: 40.0,
                height: 40.0,
                child: Icon(
                  Icons.people,
                ),
              ),
              title: const Text(
                'Contacts',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
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
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const UserSettings()));
              },
            ),
            ListTile(
                leading: const SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: Icon(
                    Icons.password,
                  ),
                ),
                title: const Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onTap: () => showDialog<void>(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context){
                      String? currPass,newPass;
                      return WillPopScope(
                        onWillPop:  () async => false,
                        child: AlertDialog(alignment: Alignment.center,
                            title: const Text('Change Password'),
                            content: SizedBox(
                              height: 120,
                              child: Column(
                                children: [
                                  TextFormFieldWidget(
                                      textController: TextEditingController(),
                                      onPressed: (value){
                                        currPass = value;
                                      },
                                      label: 'Current Password',
                                      obscureText: true),
                                  const SizedBox(height: 15,),
                                  TextFormFieldWidget(
                                      textController: TextEditingController(),
                                      onPressed: (value){
                                        newPass = value;
                                      },
                                      label: 'New Password',
                                      obscureText: true)
                                ],
                              ),
                            ),actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(content: Text(
                                  'Your current password is changed.'
                              ),));
                              await userProvider.updateUser(currentPass: currPass, newPass: newPass);
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
                      onPressed: () async {
                        await userProvider.signOutUser();

                        if (context.mounted) {
                          final navigator = Navigator.of(context);
                          navigator.pushNamedAndRemoveUntil(
                              '/', (Route<dynamic> route) => false);
                        }
                      },
                      child: const Text('Sign out '),
                    ),
                  ],
                ),
              ),
            ),
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
                  fontSize: 16.0,
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
        ),
      ),
    );
  }
}
