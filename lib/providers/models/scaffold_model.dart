import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../utilities/scaffold_utils/appbar_factory.dart';
import '../../utilities/scaffold_utils/drawer_factory.dart';
import '../messages_provider.dart';

class ScaffoldModel extends ChangeNotifier {
  final MessagesProvider _messagesProvider;
  final ChannelsProvider _channelsProvider;
  final UserProvider _userProvider;

  AppBar? _appBar;
  Drawer? _drawer;
  AsyncState _state = AsyncState.ready;

  AppBar? get appBar => _appBar;
  Drawer? get drawer => _drawer;
  AsyncState get state => _state;

  ScaffoldModel({required BuildContext context})
      : _messagesProvider = Provider.of<MessagesProvider>(
          context,
          listen: false,
        ),
        _channelsProvider = Provider.of<ChannelsProvider>(
          context,
          listen: false,
        ),
        _userProvider = Provider.of<UserProvider>(
          context,
          listen: false,
        );

  void _setParams({AppBar? appBar, Drawer? drawer}) {
    _appBar = appBar;
    _drawer = drawer;
    _state = AsyncState.ready;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void clear() {
    _appBar = null;
    _drawer = null;
    _state = AsyncState.ready;
    if (hasListeners) {
      notifyListeners();
    }
  }

  void setAppBarTitleOnly({
    required BuildContext context,
    required String title,
  }) {
    _setParams(
      appBar: AppBarFactory.createTitleOnlyAppBar(title: title),
      drawer: null,
    );
  }

  Future<void> setInboxScaffold({required GoRouter router}) async {
    _state = AsyncState.loading;
    int chatsNotifications = 0;
    int invitesNotifications = 0;
    // TODO: Use subscriptions to update notification count in real-time
    final channelsResult = await _channelsProvider.queryUserChannels(
        userId: _userProvider.user!.id);
    final unseenMessagesResult = await _messagesProvider.unseenMessages();
    if (channelsResult.gqlQueryResult.hasException ||
        unseenMessagesResult.gqlQueryResult.hasException) {
      _state = AsyncState.error;
    } else {
      List<ChannelForUser> unarchivedChannels = channelsResult.response!
          .where((channel) => !channel.isArchivedForMe)
          .toList();
      for (ChannelForUser channel in unarchivedChannels) {
        chatsNotifications += unseenMessagesResult.response!
            .where((unseenMessage) => unseenMessage.channelId == channel.id)
            .length;
      }
      // TODO: Get invites from backend
    }
    _setParams(
      appBar: AppBarFactory.createInboxAppBar(
        router: router,
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
      drawer: DrawerFactory.createInboxDrawer(
        chatsNotifications: chatsNotifications,
        invitesNotifications: invitesNotifications,
      ),
    );
  }

  void setInviteReceivedDetailScaffold({required BuildContext context}) {
    _setParams(
      appBar: AppBarFactory.createInviteReceivedDetailAppBar(context: context),
      drawer: null,
    );
  }

  void setChannelMessagesScaffold({
    required BuildContext context,
    required String channelName,
    required String channelId,
    required bool isArchivedForUser,
    String? avatarUrl,
  }) {
    _setParams(
      appBar: AppBarFactory.createChannelMessagesAppBar(
        context: context,
        channelName: channelName,
        channelId: channelId,
        isArchivedForUser: isArchivedForUser,
        avatarUrl: avatarUrl,
      ),
      drawer: null,
    );
  }
}
