import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:mm_flutter_app/providers/models/chat_model.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/text_divider.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';
import 'message_bubble/message_bubble.dart';
import 'message_bubble/message_hoverover.dart';
import 'message_bubble/message_peeker.dart';
import 'message_details.dart';
import 'message_input.dart';

class ChannelMessagesScreen extends StatefulWidget {
  final String channelId;

  const ChannelMessagesScreen({
    super.key,
    required this.channelId,
  });

  @override
  State<ChannelMessagesScreen> createState() => _ChannelMessagesScreenState();
}

class _ChannelMessagesScreenState extends State<ChannelMessagesScreen>
    with RouteAwareMixin<ChannelMessagesScreen> {
  void _refreshScaffold(
    BuildContext context,
    String channelName,
    String? avatarUrl,
  ) {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setChannelMessagesScaffold(
        context,
        channelName,
        avatarUrl,
      );
    });
  }

  @override
  void didPush() {
    setState(() {
      super.didPush();
    });
  }

  @override
  void didPopNext() {
    setState(() {
      super.didPopNext();
    });
  }

  @override
  Widget build(BuildContext context) {
    final channelsProvider = Provider.of<ChannelsProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return channelsProvider.findChannelById(
      channelId: widget.channelId,
      onData: (data, {refetch, fetchMore}) {
        ChannelById channel = data.response!;
        final participant = channel.participants
            .firstWhere((item) => item.user.id != user?.id)
            .user;
        final String channelName = participant.fullName!;
        final String? avatarUrl = participant.avatarUrl;
        if (isRouteActive) {
          _refreshScaffold(context, channelName, avatarUrl);
        }
        return ChangeNotifierProvider(
          create: (context) => ChatModel(
            context: context,
            channelId: channel.id,
          ),
          child: ChannelChat(
            channel: channel,
          ),
        );
      },
    );
  }
}

class ChannelChat extends StatefulWidget {
  const ChannelChat({
    Key? key,
    required this.channel,
  }) : super(key: key);
  final ChannelById channel;

  @override
  State<ChannelChat> createState() => _ChannelChatState();
}

class _ChannelChatState extends State<ChannelChat> {
  final TextEditingController messageTextController = TextEditingController();
  final ScrollController listScrollController = ScrollController();
  final Duration _animationDuration = const Duration(milliseconds: 250);
  ChatModel? _chatModel;
  int _messageCount = 0;
  bool _unreadMessages = false; // Non-local Message exists outside of viewport
  ChannelMessage? _focusedMessage; // Intended reply Message

  @override
  void initState() {
    super.initState();
    _chatModel = Provider.of<ChatModel>(
      context,
      listen: false,
    );
    _markMessageRead();
    _chatModel!.createChannelSubscription();
    _messageCount = _chatModel!.channelMessages.length;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _chatModel!.refreshChannelMessages();
  }

  _markMessageRead() {
    _chatModel!.messagesProvider.markMessageRead(channelId: widget.channel.id);
  }

  void _processNewMessages() {
    if (_messageCount < _chatModel!.channelMessages.length) {
      _markMessageRead();
      if (_isCurrentUser(
        userId: _chatModel!.channelMessages.last.createdBy,
        context: context,
      )) {
        _scrollDown();
      } else if (_unreadMessages != true) {
        _unreadMessages = true;
      }
    }
    _messageCount = _chatModel!.channelMessages.length;
  }

  @override
  void dispose() {
    _chatModel?.cancelChannelSubscription();
    messageTextController.dispose();
    listScrollController.dispose();
    super.dispose();
  }

  void _scrollDown() {
    if (listScrollController.hasClients &&
        _chatModel!.channelMessages.isNotEmpty) {
      listScrollController.animateTo(
        listScrollController.position.minScrollExtent,
        duration: _animationDuration,
        curve: Curves.easeInOutBack,
      );
    }
  }

  Future<dynamic> _openMessageDetailsModal(
      BuildContext context, ChannelMessage message) async {
    setState(() {
      if (_focusedMessage != null) _focusedMessage = null;
    });
    final reply = await Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: ((context, animation, secondaryAnimation) {
          return MessageDetailsModal(
            context: context,
            channel: widget.channel,
            message: message,
          );
        }),
        transitionDuration: const Duration(
          milliseconds: 150,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );

    if (reply != null) {
      setState(() {
        if (reply == true) {
          _focusedMessage = message;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatModel>(
      builder: (context, chatModel, child) {
        _chatModel = chatModel;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _processNewMessages();
        });
        return AppUtility.widgetForAsyncState(
          state: _chatModel!.state,
          onReady: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: BuildMessageBubbles(
                  channel: widget.channel,
                  chatMessages: chatModel.channelMessages,
                  participants: widget.channel.participants,
                  listScrollController: listScrollController,
                  onOpenMessageDetails: (message) =>
                      _openMessageDetailsModal(context, message),
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
                  chatModel.messagesProvider.createMessage(
                    input: Input$ChannelMessageInput(
                      channelId: widget.channel.id,
                      messageText: val,
                      replyToMessageId: replyToMessageId,
                    ),
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
  const BuildMessageBubbles({
    Key? key,
    required this.channel,
    required this.participants,
    required this.chatMessages,
    required this.listScrollController,
    required this.onOpenMessageDetails,
    required this.onSetReplyingTo,
  }) : super(key: key);

  final ChannelById channel;
  final List<ChannelParticipant> participants;
  final List<ChannelMessage> chatMessages;
  final ScrollController listScrollController;
  final Function(ChannelMessage message) onOpenMessageDetails;
  final Function(ChannelMessage message) onSetReplyingTo;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    List<ChannelMessage> messages = chatMessages.reversed.toList();
    return chatMessages.isNotEmpty
        ? GroupedListView<ChannelMessage, String>(
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
            groupBy: (message) =>
                DateFormat('yyyy-MM-dd').format(message.createdAt).toString(),
            indexedItemBuilder: (context, ChannelMessage message, i) {
              // return buildMessageBubble(_messages[i]);
              final message = messages[i];

              return BuildMessageBubble(
                key: ObjectKey(message.id),
                message: message,
                chatMessages: chatMessages,
                participants: participants,
                onSwipeLeft: () => onOpenMessageDetails(message),
                onSwipeRight: () => onSetReplyingTo(message),
              );
            },
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            controller: listScrollController,
            groupHeaderBuilder: (ChannelMessage message) => Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: TextDivider(
                text: DateTime.now().day == message.createdAt.day
                    ? l10n.dateSimpleToday[0].toUpperCase() +
                        l10n.dateSimpleToday.substring(1)
                    : DateFormat('EEE. MMM dd').format(message.createdAt),
              ),
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ParticipantStack.channel(
                //   channel: channel,
                //   participantRadius: 15.0,
                // ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.messenger_outline_rounded,
                          size: 12.0,
                          color: Colors.grey,
                        ),
                        Text(
                          ' Start the conversation!',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

class BuildMessageBubble extends StatelessWidget {
  const BuildMessageBubble({
    Key? key,
    required this.message,
    required this.participants,
    required this.chatMessages,
    this.onSwipeLeft,
    this.onSwipeRight,
  }) : super(key: key);
  final ChannelMessage message;
  final List<ChannelParticipant> participants;
  final List<ChannelMessage> chatMessages;
  final VoidCallback? onSwipeLeft;
  final VoidCallback? onSwipeRight;

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
    );
    return Row(
      mainAxisAlignment:
          _isCurrentUser(userId: message.createdBy, context: context)
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
      children: [
        kIsWeb || Platform.isMacOS
            ? MessageHoverover(
                message: bubble,
                onButtonOne: onSwipeRight,
                onButtonTwo: onSwipeLeft,
              )
            : MessagePeeker(
                onSwipeLeft: onSwipeLeft,
                onSwipeRight: onSwipeRight,
                child: bubble,
              ),
      ],
    );
  }
}

bool _isCurrentUser({context, userId}) {
  return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
}
