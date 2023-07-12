import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:mm_flutter_app/services/graphql/graphql.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/widgets/atoms/app_wrapper.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/screens/dashboard/dashboard.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_screen.dart';
import 'package:provider/provider.dart';

import 'providers/user_provider.dart';
import 'widgets/screens/explore/explore.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(initialLocation: '/', routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const StartScreen();
        },
      ),
      GoRoute(
        path: '/signin',
        builder: (BuildContext context, GoRouterState state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
          path: '/signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          }),
      GoRoute(
        path: '/loading',
        builder: (BuildContext context, GoRouterState state) {
          return const LoadingScreen();
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          return AppWrapper(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/home',
            builder: (BuildContext context, GoRouterState state) {
              return const Center(child: DashboardScreen());
            },
          ),
          GoRoute(
            path: '/explore',
            builder: (BuildContext context, GoRouterState state) {
              return const Explore();
            },
          ),
          GoRoute(
            path: '/progress',
            builder: (BuildContext context, GoRouterState state) {
              return Center(
                  child: Text(AppLocalizations.of(context)!.navProgressText));
            },
          ),
          GoRoute(
            path: '/inbox',
            builder: (BuildContext context, GoRouterState state) {
              return Center(
                  child: Text(AppLocalizations.of(context)!.navInboxText));
            },
          ),
          GoRoute(
            path: '/profile',
            builder: (BuildContext context, GoRouterState state) {
              return Center(
                  child: Text(AppLocalizations.of(context)!.navProfileText));
            },
          ),
        ],
      )
    ]);

    return MaterialApp.router(
      routerConfig: router,
      title: "MicroMentor",
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
      onError: (error, {refetch}) {
        return const SignInScreen();
      },
      onData: (data, {refetch, fetchMore}) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/home');
        });

        return const LoadingScreen();
      },
      logFailures: false, // Error is expected when user is not logged in.
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Loading());
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO(m-rosario): Make crash data collection opt-in.
  final CrashHandler crashHandler = CrashHandler(!kDebugMode, true);
  FlutterError.onError = crashHandler.handleUncaughtFlutterError;
  PlatformDispatcher.instance.onError =
      crashHandler.handleUncaughtPlatformError;
  ErrorWidget.builder = crashHandler.handleBuildError;

  await dotenv.load(fileName: "assets/.env");
  final serverUrl = dotenv.env['APP_GRAPHQL_URL'];
  final subscriptionUrl = dotenv.env['APP_SUBSCRIPTION_URL'];

  debugPrint('Server: $serverUrl');
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
            child: const MainApp(),
          );
        },
      ),
    ),
  );
}
