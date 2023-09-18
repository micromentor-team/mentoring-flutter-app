import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:mm_flutter_app/providers/models/chat_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/appbar_factory.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/text_divider.dart';
import 'package:provider/provider.dart';

import '../../../../providers/base/operation_result.dart';
import '../../../../utilities/navigation_mixin.dart';
import 'message_bubble.dart';
import 'message_context_menu.dart';
import 'message_input.dart';

class ChannelMessagesScreen extends StatefulWidget {
  final String channelId;
  final bool isArchivedForUser;

  const ChannelMessagesScreen({
    super.key,
    required this.channelId,
    required this.isArchivedForUser,
  });

  @override
  State<ChannelMessagesScreen> createState() => _ChannelMessagesScreenState();
}

class _ChannelMessagesScreenState extends State<ChannelMessagesScreen>
    with NavigationMixin<ChannelMessagesScreen> {
  late final ChannelsProvider _channelsProvider;
  late final AuthenticatedUser _authenticatedUser;
  late Future<OperationResult<ChannelById>> _channel;

  @override
  void initState() {
    super.initState();
    _channelsProvider = Provider.of<ChannelsProvider>(context, listen: false);
    _authenticatedUser =
        Provider.of<UserProvider>(context, listen: false).user!;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _channel = _channelsProvider.findChannelById(channelId: widget.channelId);
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    return FutureBuilder(
      future: _channel,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            ChannelById channel = snapshot.data!.response!;
            final participant = channel.participants
                .firstWhere((item) => item.user.id != _authenticatedUser.id)
                .user;
            final String channelName = participant.fullName!;
            final String? avatarUrl = participant.avatarUrl;
            buildPageRouteScaffold((scaffoldModel) {
              scaffoldModel.setParams(
                appBar: AppBarFactory.createChannelMessagesAppBar(
                  context: context,
                  channelName: channelName,
                  channelId: widget.channelId,
                  isArchivedForUser: widget.isArchivedForUser,
                  avatarUrl: avatarUrl,
                ),
              );
            });
            return ChangeNotifierProvider(
              create: (context) => ChatModel(
                context: context,
                channelId: channel.id,
                authenticatedUser: _authenticatedUser,
              ),
              child: ChannelChat(
                channel: channel,
              ),
            );
          },
        );
      },
    );
  }
}

class ChannelChat extends StatefulWidget {
  final ChannelById channel;

  const ChannelChat({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  State<ChannelChat> createState() => _ChannelChatState();
}

class _ChannelChatState extends State<ChannelChat>
    with NavigationMixin<ChannelChat> {
  final TextEditingController messageTextController = TextEditingController();
  final ScrollController listScrollController = ScrollController();
  final Duration _animationDuration = const Duration(milliseconds: 250);
  late final ChatModel _chatModel;
  int _messageCount = 0;
  bool _unreadMessages = false; // Non-local Message exists outside of viewport
  ChannelMessage? _focusedMessage; // Intended reply Message

  @override
  void initState() {
    super.initState();
    _chatModel = Provider.of<ChatModel>(context, listen: false);
    _chatModel.markMessagesAsRead();
    _chatModel.createChannelSubscription();
    _messageCount = _chatModel.channelMessages.length;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _chatModel.refreshChannelMessages();
  }

  void _processNewMessages() {
    if (_messageCount < _chatModel.channelMessages.length) {
      _chatModel.markMessagesAsRead();
      if (_chatModel.channelMessages.last.createdBy ==
          _chatModel.authenticatedUser.id) {
        _scrollDown();
      } else if (_unreadMessages != true) {
        _unreadMessages = true;
      }
    }
    _messageCount = _chatModel.channelMessages.length;
  }

  @override
  void dispose() {
    _chatModel.cancelChannelSubscription();
    messageTextController.dispose();
    listScrollController.dispose();
    super.dispose();
  }

  void _scrollDown() {
    if (listScrollController.hasClients &&
        _chatModel.channelMessages.isNotEmpty) {
      listScrollController.animateTo(
        listScrollController.position.minScrollExtent,
        duration: _animationDuration,
        curve: Curves.easeInOutBack,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatModel>(
      builder: (context, chatModel, child) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _processNewMessages();
        });
        return AppUtility.widgetForAsyncState(
          state: chatModel.state,
          onReady: () => Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: BuildMessageBubbles(
                  channel: widget.channel,
                  authenticatedUser: chatModel.authenticatedUser,
                  chatMessages: chatModel.channelMessages,
                  participants: widget.channel.participants,
                  listScrollController: listScrollController,
                  onSetReplyingTo: (message) {
                    setState(() {
                      _focusedMessage = message;
                    });
                  },
                ),
              ),
              MessageInput(
                replyingTo: _focusedMessage,
                participants: widget.channel.participants,
                onSubmit: (val, replyToMessageId) {
                  _chatModel.addChannelMessage(
                    channelId: widget.channel.id,
                    messageText: val,
                    replyToMessageId: replyToMessageId,
                  );
                  setState(() {
                    _focusedMessage = null;
                  });
                },
                onClearReply: () {
                  setState(() {
                    _focusedMessage = null;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class BuildMessageBubbles extends StatelessWidget {
  final ChannelById channel;
  final AuthenticatedUser authenticatedUser;
  final List<ChannelParticipant> participants;
  final List<ChannelMessage> chatMessages;
  final ScrollController listScrollController;
  final Function(ChannelMessage message)
      onSetReplyingTo; //TODO - Temporarily disabled.

  const BuildMessageBubbles({
    Key? key,
    required this.channel,
    required this.authenticatedUser,
    required this.participants,
    required this.chatMessages,
    required this.listScrollController,
    required this.onSetReplyingTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<ChannelMessage> messages = chatMessages.reversed.toList();
    return GroupedListView<ChannelMessage, String>(
      elements: messages,
      clipBehavior: Clip.none,
      // We do not want the builder to sort again...
      sort: false,
      reverse: true,
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: false,
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.paddingMedium,
      ),
      groupBy: (message) => DateFormat('yyyy-MM-dd')
          .format(message.createdAt.toLocal())
          .toString(),
      indexedItemBuilder: (context, ChannelMessage message, i) {
        // return buildMessageBubble(_messages[i]);
        final message = messages[i];

        return BuildMessageBubble(
          key: ObjectKey(message.id),
          message: message,
          chatMessages: chatMessages,
          participants: participants,
          isSentByAuthenticatedUser: message.createdBy == authenticatedUser.id,
        );
      },
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      controller: listScrollController,
      groupHeaderBuilder: (ChannelMessage message) => Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: TextDivider(
          text: DateTime.now().day == message.createdAt.toLocal().day
              ? l10n.dateSimpleToday[0].toUpperCase() +
                  l10n.dateSimpleToday.substring(1)
              : DateFormat('EEE. MMM dd').format(message.createdAt.toLocal()),
        ),
      ),
    );
  }
}

class BuildMessageBubble extends StatelessWidget {
  final ChannelMessage message;
  final List<ChannelParticipant> participants;
  final List<ChannelMessage> chatMessages;
  final bool isSentByAuthenticatedUser;

  const BuildMessageBubble({
    Key? key,
    required this.message,
    required this.participants,
    required this.chatMessages,
    required this.isSentByAuthenticatedUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChannelMessage? replyingTo;
    if (message.replyToMessageId != null) {
      try {
        replyingTo = chatMessages
            .firstWhere((item) => item.id == message.replyToMessageId);
      } catch (e) {
        replyingTo = null;
      }
    }

    final bubble = MessageBubble(
      message: message,
      replyingTo: replyingTo,
      participants: participants,
      isDeleted: message.deletedAt != null,
      isSentByAuthenticatedUser: isSentByAuthenticatedUser,
    );
    return Row(
      mainAxisAlignment: isSentByAuthenticatedUser
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        MessageContextMenu(
          messageBubble: bubble,
        ),
      ],
    );
  }
}
