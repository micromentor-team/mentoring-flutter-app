import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/screens/dashboard/dashboard.dart';
import 'package:mm_flutter_app/widgets/screens/home_menu/home_menu.dart';
import 'package:mm_flutter_app/widgets/screens/messages/messages_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    DashboardScreen(),
    ChannelsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.5),
      drawer: const HomeMenu(),
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
