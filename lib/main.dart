import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/services/firebase/firebase_service.dart';
import 'package:provider/provider.dart';

import '__generated/schema/schema.graphql.dart';
import 'constants/constants.dart';
import 'models/explore_card_filters_model.dart';
import 'models/inbox_model.dart';
import 'models/locale_model.dart';
import 'models/scaffold_model.dart';
import 'models/user_registration_model.dart';
import 'services/graphql/graphql.dart';
import 'services/graphql/providers/base/operation_result.dart';
import 'services/graphql/providers/channels_provider.dart';
import 'services/graphql/providers/content_provider.dart';
import 'services/graphql/providers/invitations_provider.dart';
import 'services/graphql/providers/messages_provider.dart';
import 'services/graphql/providers/user_provider.dart';
import 'utilities/router.dart';
import 'utilities/utility.dart';
import 'widgets/features/sign_in/screens/sign_in.dart';
import 'widgets/features/welcome/screens/welcome.dart';
import 'widgets/shared/loading.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final FirebaseService firebaseService = FirebaseService();

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
  const StartScreen({
    super.key,
    required this.nextRouteName,
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with FirebaseServiceOwner {
  late Future<OperationResult<AuthenticatedUser?>> _authenticatedUser;
  late Future<OperationResult> _content;
  late final AppLifecycleListener _appLifeCycleListener;
  late final InboxModel _inboxModel;
  late final ContentProvider _contentProvider;
  late final UserRegistrationModel _registrationModel;
  late final ExploreCardFiltersModel _filtersModel;
  bool _didReportSessionStarted = false;

  @override
  void initState() {
    super.initState();
    _appLifeCycleListener = AppLifecycleListener(
      onStateChange: _onStateChanged,
    );

    _inboxModel = Provider.of<InboxModel>(context, listen: false);
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _filtersModel = Provider.of<ExploreCardFiltersModel>(
      context,
      listen: false,
    );
  }

  @override
  void dispose() {
    _appLifeCycleListener.dispose();
    _inboxModel.cancelDataPolling();
    firebaseService.shutDownService();
    super.dispose();
  }

  void _onStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        debugPrint('App detached');
      case AppLifecycleState.resumed:
        debugPrint('App resumed');
        _reportSessionStarted();
      case AppLifecycleState.inactive:
        debugPrint('App inactive');
        _reportSessionEnded();
      case AppLifecycleState.hidden:
        debugPrint('App hidden');
      case AppLifecycleState.paused:
        debugPrint('App paused');
    }
  }

  void _reportSessionStarted() {
    _didReportSessionStarted = true;
    if (firebaseService.firebaseToken == null) {
      debugPrint('_reportSessionStarted called without having firebaseToken.');
    }
    Provider.of<UserProvider>(context, listen: false).startMySession(
      deviceUuid: firebaseService.deviceUuid,
      pushNotificationToken: firebaseService.firebaseToken,
    );
  }

  void _reportSessionEnded() {
    _didReportSessionStarted = true;
    Provider.of<UserProvider>(context, listen: false).endMySession(
      deviceUuid: firebaseService.deviceUuid,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _content = _contentProvider.findAllOptionsByType();
    _authenticatedUser =
        Provider.of<UserProvider>(context).getAuthenticatedUser(
      logFailures: false, // Error is expected when user is not logged in.
    );
  }

  @override
  void onNewFirebaseTokenReceived(String deviceUuid, String firebaseToken) {
    // If we haven't yet reported the starting of the session, we'll send
    // the Firebase token together with that, instead of here.
    if (_didReportSessionStarted) {
      Provider.of<UserProvider>(context).updateUserDevice(
        input: Input$UserDeviceInput(
          deviceUuid: deviceUuid,
          pushNotificationToken: firebaseToken,
        ),
      );
    }
  }

  void _initializeUser() async {
    _registrationModel.clear();
    _filtersModel.setFilters();
    _filtersModel.setAdvancedFilters();
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
                _initializeUser();
                context.goNamed(widget.nextRouteName);
              });

              firebaseService.setOwner(this);
              return const LoadingScreen();
            },
          ),
        ),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Loading());
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  firebaseService.init();

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
                    companyStages: contentProvider.companyStageIds,
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
