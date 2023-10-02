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
import 'package:mm_flutter_app/providers/content_provider.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:mm_flutter_app/providers/models/explore_card_filters_model.dart';
import 'package:mm_flutter_app/providers/models/inbox_model.dart';
import 'package:mm_flutter_app/providers/models/locale_model.dart';
import 'package:mm_flutter_app/providers/models/scaffold_model.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/services/graphql/graphql.dart';
import 'package:mm_flutter_app/utilities/errors/crash_handler.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/loading.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:mm_flutter_app/widgets/screens/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/user_provider.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = AppRouter.createRouter(context, navigatorKey);
    return MaterialApp.router(
      routerConfig: router,
      title: Identifiers.appName,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      locale: Provider.of<LocaleModel>(context).locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: Provider.of<LocaleModel>(context).getSupportedLocales(),
    );
  }
}

class StartScreen extends StatefulWidget {
  final String nextRouteName;
  const StartScreen({Key? key, required this.nextRouteName}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late Future<OperationResult<AuthenticatedUser?>> _authenticatedUser;
  late Future<OperationResult> _content;
  late final InboxModel _inboxModel;
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;

  @override
  void initState() {
    super.initState();
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

  @override
  void dispose() {
    _inboxModel.cancelDataPolling();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _content = _contentProvider.findAllOptionsByType().then(
          (value) => _contentProvider.findPresetPronouns(),
        );
    _authenticatedUser =
        Provider.of<UserProvider>(context).getAuthenticatedUser(
      logFailures: false, // Error is expected when user is not logged in.
    );
  }

  void _initializeUser() async {
    _registrationModel.clear();
    await _inboxModel.refreshAll();
    _inboxModel.initializeDataPolling();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _content,
      builder: (_, optionsSnapshot) => AppUtility.widgetForAsyncSnapshot(
        snapshot: optionsSnapshot,
        onReady: () => FutureBuilder(
          future: _authenticatedUser,
          builder: (context, userSnapshot) => AppUtility.widgetForAsyncSnapshot(
            snapshot: userSnapshot,
            onLoading: () => const LoadingScreen(),
            onError: () => const WelcomeScreen(),
            onReady: () {
              final user = userSnapshot.data?.response;
              if (user == null) {
                // Empty result means that the user not signed in.
                return widget.nextRouteName == Routes.home.name
                    ? const WelcomeScreen()
                    : SignInScreen(nextRouteName: widget.nextRouteName);
              }
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!user.offersHelp && !user.seeksHelp) {
                  // User is created, but lacks basic information.
                  // Route to signup flow to complete profile.
                  context.go(Routes.signupWelcome.path);
                } else {
                  _initializeUser();
                  context.goNamed(widget.nextRouteName);
                }
              });
              return const LoadingScreen();
            },
          ),
        ),
      ),
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

    String? token = await FirebaseNotifications().getToken();
    debugPrint('Token is $token');
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
              Provider<ContentProvider>.value(
                value: ContentProvider(client: client),
              ),
              FutureProvider(
                initialData: ContentProvider(client: client),
                create: (context) async {
                  final provider = ContentProvider(client: client);
                  await provider.findAllOptionsByType();
                  return provider;
                },
              ),
              Provider<ChannelsProvider>.value(
                value: ChannelsProvider(client: client),
              ),
              Provider<InvitationsProvider>.value(
                value: InvitationsProvider(client: client),
              ),
              Provider<MessagesProvider>.value(
                value: MessagesProvider(client: client),
              ),
              ChangeNotifierProvider(
                create: (context) => InboxModel(context: context),
              ),
              ChangeNotifierProvider(
                create: (context) => ScaffoldModel(context: context),
              ),
              FutureProvider(
                initialData: ExploreCardFiltersModel.empty(),
                create: (context) async {
                  final contentProvider = ContentProvider(client: client);
                  await contentProvider.findAllOptionsByType();

                  return ExploreCardFiltersModel(
                    countries: contentProvider.countryIds,
                    languages: contentProvider.languageIds,
                    expertises: contentProvider.expertiseIds,
                    industries: contentProvider.industryIds,
                  );
                },
              ),
              ChangeNotifierProvider(
                create: (context) => LocaleModel(),
              ),
              Provider<RouteObserver<PageRoute>>.value(
                value: RouteObserver<PageRoute>(),
              ),
              Provider<UserRegistrationModel>.value(
                value: UserRegistrationModel(),
              ),
            ],
            child: const MainApp(),
          );
        },
      ),
    ),
  );
}
