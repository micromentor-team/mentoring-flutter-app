import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/messages/messages_provider.dart';
import 'package:mm_flutter_app/services/graphql/graphql.dart';
import 'package:mm_flutter_app/widgets/screens/sign_in/sign_in_screen.dart';
import 'package:mm_flutter_app/widgets/screens/tabs/tab_screen.dart';
import 'package:provider/provider.dart';

import 'data/models/user/user_provider.dart';

void main() async {
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
            child: const App(),
          );
        },
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MicroMentor",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),
      home: const StartScreen(),
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
        return const TabsScreen();
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
