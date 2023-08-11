import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/firebase_notifications.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/explore_card_filters_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:mm_flutter_app/providers/models/scaffold_model.dart';
import 'package:mm_flutter_app/services/graphql/graphql.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/user_provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = AppRouter.createRouter(context);
    return MaterialApp.router(
      routerConfig: router,
      title: Identifiers.appName,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late Future<OperationResult<AuthenticatedUser?>> _authenticatedUser;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _authenticatedUser =
        Provider.of<UserProvider>(context).getAuthenticatedUser(
      logFailures: false, // Error is expected when user is not logged in.
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _authenticatedUser,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onLoading: () => const LoadingScreen(),
          onError: () => const SignInScreen(),
          onReady: () {
            if (snapshot.data?.response == null) {
              // Empty result means that the user not signed in.
              return const SignInScreen();
            }
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(Routes.home.path);
            });
            return const LoadingScreen();
          },
        );
      },
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
  await Firebase.initializeApp(
    name: Identifiers.appName,
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kIsWeb) {
    await FirebaseNotifications().initialize();
  }

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
              Provider<ChannelsProvider>.value(
                value: ChannelsProvider(client: client),
              ),
              Provider<MessagesProvider>.value(
                value: MessagesProvider(client: client),
              ),
              ChangeNotifierProvider(
                create: (context) => ScaffoldModel(),
              ),
              ChangeNotifierProvider(
                create: (context) => ExploreCardFiltersProvider(),
              ),
              Provider<RouteObserver<PageRoute>>.value(
                value: RouteObserver<PageRoute>(),
              ),
            ],
            child: const MainApp(),
          );
        },
      ),
    ),
  );
}
