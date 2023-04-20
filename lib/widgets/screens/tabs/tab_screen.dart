import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_flutter_app/widgets/screens/home/home.dart';
import 'package:mm_flutter_app/widgets/screens/message/message_screen.dart';
import 'package:local_auth/local_auth.dart';

import '../../../data/settings/settings.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

bool localAuth = false;

class _TabsScreenState extends State<TabsScreen> {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (_) {
      return false;
    }
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException catch (_) {
      return <BiometricType>[];
    }
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;
    try {
      return await _auth.authenticate(
        localizedReason: 'Unlock MicroMentor',
        options: const AuthenticationOptions(
          stickyAuth: true,
          // biometricOnly: true,
        ),
      );
    } on PlatformException catch (_) {
      return false;
    }
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    MessageScreen(),
  ];

  _showDialogBox() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text('Please Authenticate'),
              icon: const Icon(
                Icons.security,
                size: 50,
              ),
              content: const Text(
                  'MicroMentor protects your data to avoid unauthorized access. Please unlock MicroMentor to continue.',
                  textAlign: TextAlign.center),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: const Text('Cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _checkAuth();
                    },
                    child: const Text('Unlock'))
              ],
            ),
          );
        });
  }

  _checkAuth() async {
    localAuth = await authenticate();
    if (!localAuth) {
      _showDialogBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!localAuth && biometrics) {
      _checkAuth();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
