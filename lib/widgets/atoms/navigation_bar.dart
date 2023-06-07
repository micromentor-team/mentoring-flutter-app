import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomizedBottomNavigationBar extends StatefulWidget {
  const CustomizedBottomNavigationBar({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  State<CustomizedBottomNavigationBar> createState() =>
      _CustomizedBottomNavigationBarState();
}

class _CustomizedBottomNavigationBarState
    extends State<CustomizedBottomNavigationBar> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        return context.go('/');
      case 1:
        return context.go('/explore');
      case 2:
        return context.go('/journey');
      case 3:
        return context.go('/inbox');
      case 4:
        return context.go('/profile');
      default:
        return context.go('/');
    }
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('/explore')) {
      return 1;
    }
    if (location.startsWith('/journey')) {
      return 2;
    }
    if (location.startsWith('/inbox')) {
      return 3;
    }
    if (location.startsWith('/profile')) {
      return 4;
    }
    if (location.startsWith('/')) {
      return 0;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/MicroMentor.png",
                fit: BoxFit.contain,
                height: 32,
              ),
            ],
          )
          // backgroundColor: Color.fromARGB(0, 255, 255, 255),
          // title: Image.asset("assets/images/MicroMentor.png"),
          // leading: Image.asset(
          //   "assets/images/MicroMentor.png",
          // ),
          ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Journey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
