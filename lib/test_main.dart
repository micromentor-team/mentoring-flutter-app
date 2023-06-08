import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/messages/messages_provider.dart';
import 'package:mm_flutter_app/services/graphql/graphql.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/atoms/navigation_bar.dart';
import 'package:mm_flutter_app/widgets/screens/home/home.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:provider/provider.dart';

import 'data/models/user/user_provider.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');


class TestApp extends StatefulWidget {
  TestApp({super.key});
  var userState = "error";

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    
    final GoRouter router = GoRouter(
        initialLocation: '/',
        navigatorKey: _rootNavigatorKey,
        routes: [
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const StartScreen();
            },
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: '/signin',
            builder: (BuildContext context, GoRouterState state) {
              return const SignInScreen();
            },
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: '/loading',
            builder: (BuildContext context, GoRouterState state) {
              return const LoadingScreen();
            },
          ),
          ShellRoute(
            
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return CustomizedBottomNavigationBar(child: child);
            },
            routes: <RouteBase>[
              GoRoute(
                // parentNavigatorKey: _shellNavigatorKey,
                path: '/home',
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(child: HomeScreen());
                },
              ),
              GoRoute(
                // parentNavigatorKey: _shellNavigatorKey,
                path: '/explore',
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(child: Text('Explore'));
                },
              ),
              GoRoute(
                // parentNavigatorKey: _shellNavigatorKey,
                path: '/journey',
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(child: Text('Journey'));
                },
              ),
              GoRoute(
                // parentNavigatorKey: _shellNavigatorKey,
                path: '/inbox',
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(child: Text('Inbox'));
                },
              ),
              GoRoute(
                // parentNavigatorKey: _shellNavigatorKey,
                path: '/profile',
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(child: Text('Profile'));
                },
              ),
            ],
          )
        ]);

    return MaterialApp.router(
      routerConfig: router,
      title: "MicroMentor",
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return userProvider.queryUser(
      onLoading: () {
        return const LoadingScreen();
      },
      onError: (error) {
        return const SignInScreen();
      },
      onData: (data) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          GoRouter.of(context).go('/home');
        });

        return const LoadingScreen();
      },
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Channels'),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          strokeWidth: 4.0,
        ),
      ),
    );
  }
}

void main() async {
  await dotenv.load(fileName: "assets/.env");
  final serverUrl = dotenv.env['APP_GRAPHQL_URL'];
  final subscriptionUrl = dotenv.env['APP_SUBSCRIPTION_URL'];

  debugPrint('Server: $serverUrl');
  // debugPrint('Subscriptions: $subscriptionUrl');

  if (serverUrl == null || subscriptionUrl == null) {
    debugPrint('Set your server and websockets URLs in .env file');
    return;
  }

  final graphql = GraphqlService(
    serverUrl: serverUrl,
    subscriptionUrl: subscriptionUrl,
  );
  graphql.connect();

  runApp(
    GraphQLProvider(
      client: graphql.client,
      child: GraphQLConsumer(
        builder: (client) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => UserProvider(client: client),
              ),
              ChangeNotifierProvider(
                  create: (context) => ChannelsProvider(client: client)),
              ChangeNotifierProvider(
                  create: (context) => MessagesProvider(client: client)),
            ],
            child: TestApp(),
          );
        },
      ),
    ),
  );
}
