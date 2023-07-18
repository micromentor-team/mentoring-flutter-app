import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/data/models/channels/mock_channels_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/storybook/stories/atom_stories.dart';
import 'package:mm_flutter_app/storybook/stories/molecule_stories.dart';
import 'package:mm_flutter_app/storybook/stories/organism_stories.dart';
import 'package:mm_flutter_app/storybook/stories/screen_stories.dart';

import 'package:provider/provider.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() => runApp(StorybookApp());

DeviceFrameData defaultDeviceFrameData = DeviceFrameData(
  isFrameVisible: true,
  device: Devices.android.bigPhone,
  orientation: Orientation.portrait,
);

final _plugins = initializePlugins(
  contentsSidePanel: true,
  knobsSidePanel: true,
  initialDeviceFrameData: defaultDeviceFrameData,
);

final HttpLink httpLink = HttpLink(
  'https://mock-storybook-url.com/graphql',
);

final AuthLink authLink = AuthLink(
  getToken: () async {
    return 'abcdefghij';
  },
);

final Link link = authLink.concat(httpLink);

class StorybookApp extends StatelessWidget {
  StorybookApp({Key? key}) : super(key: key);
  final UserMockProvider mockUserProvider = UserMockProvider(
    client: GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );
  final MockChannelsProvider mockChannelProvider = MockChannelsProvider(
    client: GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );

  Widget sbWrapper(BuildContext _, Widget? child) {
    final defaultMockedUser = AuthenticatedUser(
      id: '640abd97587f51d992jh44bb32',
      userHandle: 'james',
      fullName: 'James McCloud',
      avatarUrl: 'https://thispersondoesnotexist.com/',
      email: 'james@example.com',
      profileCompletionPercentage: 65,
    );
    mockUserProvider.setMockUser(defaultMockedUser);

    // TODO: The App Frame requires Go Router in the context
    // final GoRouter router = GoRouter(initialLocation: '/', routes: [
    //   GoRoute(
    //     path: '/',
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const StartScreen();
    //     },
    //   ),
    // ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserMockProvider>.value(
          value: mockUserProvider,
        ),
        ChangeNotifierProvider<MockChannelsProvider>.value(
          value: mockChannelProvider,
        ),
      ],
      child: MaterialApp(
        // routerConfig: router,
        title: "MicroMentor",
        debugShowCheckedModeBanner: false,
        theme: AppThemes.light(),
        darkTheme: AppThemes.dark(),
        home: Scaffold(
          body: child,
        ),
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Storybook(
        initialStory: 'widgets/atoms/profile header',
        showPanel: true,
        plugins: _plugins,
        wrapperBuilder: sbWrapper,
        stories: [
          ...atomStories(mockUserProvider),
          ...moleculeStories(mockUserProvider),
          ...organismStories(mockUserProvider),
          ...screenStories(mockUserProvider),
        ],
      );
}
