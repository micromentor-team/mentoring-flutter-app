import 'package:flutter/cupertino.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/channels/mock_channels_provider.dart';
import 'package:mm_flutter_app/data/models/message/messages_provider.dart';
import 'package:mm_flutter_app/data/models/message/mock_message_provider.dart';
import 'package:mm_flutter_app/widgets/screens/tabs/tab_screen.dart';
import 'package:provider/provider.dart';
import 'package:mm_flutter_app/widgets/screens/home/home.dart';
import 'package:mm_flutter_app/data/models/user/user_mock_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';

Widget tabsScreen({authToken, userId, deviceId}) {
  return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChannelsProvider>(create: (context)=>MockChannelProviders()),
        ChangeNotifierProvider<MessagesProvider>(create: (context)=>MessagesMockProvider()),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserMockProvider(
              authToken: authToken, userId: userId, deviceId: deviceId),
        ),
      ],
      child: const TabsScreen());
}
