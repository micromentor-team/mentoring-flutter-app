import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/settings/settings.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SafeArea(
          child: Column(
        children:  [
          ListTile(
            leading: const SizedBox(
              width: 40.0,
              height: 40.0,
              child: Icon(
                Icons.fingerprint,
              ),
            ),
            title:  const Text(
              'Biometrics',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: biometrics?Colors.blue:Colors.white),
                onPressed: (){
              setState(() {
                biometrics = !biometrics;
              });
            }, child: biometrics ? const Text('On',style: TextStyle(color: Colors.white),):const Text('Off')),
          )
        ],
      )),
    );
  }
}
