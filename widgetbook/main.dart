import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/channels/mock_channels_provider.dart';
import 'package:mm_flutter_app/data/models/message/messages_provider.dart';
import 'package:mm_flutter_app/data/models/message/mock_message_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';
import './components/components.dart';
import './screens/screens.dart';
import 'components/atoms/atoms.dart';
import 'components/molecules/molecules.dart';
import 'components/organisms/organisms.dart';
void main() async {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChannelsProvider>(create: (context)=>MockChannelProviders()),
        ChangeNotifierProvider<MessagesProvider>(create: (context)=>MessagesMockProvider()),

        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserMockProvider(
              authToken: 'authToken', userId: '1', deviceId: 'deviceId'),
        ),
      ],
      child: Widgetbook.material(
        categories: [
          // widgets are divided into two categories components and screens
          // component used for small widgets and screen used presenting screens.
          atomCategory(),
          moleculesCategory(),
          organismsCategory(),
          screensCategory(),
        ],
        themes: [
          WidgetbookTheme(
            name: 'Light',
            data: ThemeData(
              primarySwatch: Colors.amber,
              useMaterial3: true,
            ),
          ),
          WidgetbookTheme(
            name: 'Dark',
            data: ThemeData.dark(),
          ),
        ],
        appInfo: AppInfo(name: 'Widgetbook MM App'),
      ),
    );
  }
}
