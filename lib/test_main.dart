import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/atoms/navigation_bar.dart';


void main() => runApp(const TestApp());
final GoRouter _router = GoRouter(routes: [
  ShellRoute(
    // navigatorKey: _shellNavigatorKey,
    builder: (context, state, child) {
      return CustomizedBottomNavigationBar(child: child);
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Center(child: Text('Home'));
        },
      ),
      GoRoute(
        path: '/explore',
        builder: (BuildContext context, GoRouterState state) {
          return const Center(child: Text('Explore'));
        },
      ),
      GoRoute(
        path: '/journey',
        builder: (BuildContext context, GoRouterState state) {
          return const Center(child: Text('Journey'));
        },
      ),
      GoRoute(
        path: '/inbox',
        builder: (BuildContext context, GoRouterState state) {
          return const Center(child: Text('Inbox'));
        },
      ),
      GoRoute(
        path: '/profile',
        builder: (BuildContext context, GoRouterState state) {
          return const Center(child: Text('Profile'));
        },
      ),
    ],
  )
]
);

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: "Go router",
    );
  }
}