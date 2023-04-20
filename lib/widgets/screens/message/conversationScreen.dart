import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/widgets/screens/message/message_input.dart';
import 'package:mm_flutter_app/widgets/screens/message/reply_message.dart';
import 'package:provider/provider.dart';
import '../../../data/models/channels/channels_provider.dart';
import '../../../data/models/message/message.dart';
import '../../../data/models/message/messages_provider.dart';
import '../../../data/models/user/user_provider.dart';
import 'message_bubble/message_bubble.dart';
import 'message_bubble/message_peeker.dart';
import 'message_details.dart';
import 'package:grouped_list/grouped_list.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen(
      {Key? key,
      required this.title,
      required this.image,
      required this.channelId,
      this.channelMessages,
      required this.userId})
      : super(key: key);
  final String title;
  final String image;
  final String channelId;
  final String userId;
  final List? channelMessages;

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  List<Message> chatMess = [];
  List<String> notSeenMessages = [];

  _getMessages() async {
    final messageProvider =
        Provider.of<MessagesProvider>(context, listen: false);
    final channelProvider = Provider.of<ChannelsProvider>(context);
    await messageProvider.getMessages(
        channelId: widget.channelId, userId: widget.userId);
    chatMess = messageProvider.messages;
    notSeenMessages = messageProvider.notSeenMessages;
    if (notSeenMessages.isNotEmpty) {
      await channelProvider.addChannelMessageEvent(
          channelId: widget.channelId,
          messageIds: notSeenMessages,
          userId: widget.userId);
    }
    return chatMess;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: const Icon(Icons.refresh)),
            const SizedBox(
              width: 15,
            ),
          ],
          title: Row(
            children: [
              CircleAvatar(
                  radius: 15,
                  child: ClipOval(
                    child: widget.image.isNotEmpty
                        ? Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.image))
                        : const Icon(Icons.account_circle),
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(widget.title)
            ],
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() {});
          },
          child: FutureBuilder(
              future: _getMessages(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ChannelChat(
                    chatMessages: chatMess,
                    channelId: widget.channelId,
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ));
  }
}

class ChannelChat extends StatefulWidget {
  const ChannelChat({
    Key? key,
    // required this.channel,
    required this.chatMessages,
    required this.channelId,
  }) : super(key: key);

  // final Channel channel;
  final List<Message> chatMessages;
  final String channelId;

  @override
  State<ChannelChat> createState() => _ChannelChatState();
}

class _ChannelChatState extends State<ChannelChat>
    with SingleTickerProviderStateMixin {
  final TextEditingController messageTextController = TextEditingController();
  final ScrollController listScrollController = ScrollController();
  final FocusNode focusNode = FocusNode();
  List<Message> chatMessages = [];
  List<String> unseenMessages = [];
  bool _scrollButtonVisibility = false;
  String newMessageText = '';
  Message? _focusedMessage;

  final String localUserId = 'tango';

  void _scrollListener() {
    if (listScrollController.position.extentAfter > 50) {
      setState(() {
        _scrollButtonVisibility = true;
      });
    } else {
      if (listScrollController.position.atEdge &&
          listScrollController.position.pixels == 0) {
        setState(() {
          _scrollButtonVisibility = false;
        });
      }
      setState(() {
        _scrollButtonVisibility = false;
      });
    }
  }

  @override
  void initState() {
    chatMessages = widget.chatMessages;
    // Immediately after paint (addPostFrameCallback), scroll to the bottom
    WidgetsBinding.instance.addPostFrameCallback((_) => {_scrollDown()});
    listScrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    WidgetsBinding.instance.addPostFrameCallback((_) => {_scrollDown()});
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    messageTextController.dispose();
    listScrollController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void _scrollDown() {
    if (listScrollController.hasClients) {
      listScrollController.animateTo(
          listScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.linear);
    } else {
      Timer(Duration(milliseconds: 500), () => _scrollDown());
    }
  }

  Future<dynamic> _openMessageDetailsModal(
      BuildContext context, Message message) async {
    setState(() {
      if (_focusedMessage != null) _focusedMessage = null;
    });
    final reply = await Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: ((context, animation, secondaryAnimation) {
          return MessageDetailsModal(
            context: context,
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
        } else if (reply == Message) {
          // print(_reply);
          int messageIndex =
              chatMessages.indexWhere((element) => element.id == message.id);
          setState(() {
            chatMessages.replaceRange(messageIndex, messageIndex + 1, [reply]);
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        chatMessages.isNotEmpty
            ? Expanded(
                child: Stack(
                  children: [
                    buildMessageBubbles(),
                    // buildScrollButton(),
                  ],
                ),
              )
            : Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('No message here yet'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Send a message'),
                    ],
                  ),
                ),
              ),
        buildMessageInput(),
      ],
    );
  }

  Widget buildScrollButton() {
    return AnimatedOpacity(
      opacity: _scrollButtonVisibility ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 150),
      child: Visibility(
        visible: _scrollButtonVisibility,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              mini: true,
              child: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                _scrollDown();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMessageBubble(Message chatMessage) {
    void replyTo(Message message) {
      setState(() {
        _focusedMessage = message;
      });
    }

    return Row(
      mainAxisAlignment:
          chatMessage.isLocal ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        MessagePeeker(
          onSwipeLeft: () => _openMessageDetailsModal(
            context,
            chatMessage,
          ),
          onSwipeRight: () => replyTo(chatMessage),
          child: MessageBubble(
            message: chatMessage,
          ),
        ),
      ],
    );
  }

  Widget buildMessageBubbles() {
    final todayDate = DateTime.now();
    return chatMessages.isNotEmpty
        ? GroupedListView<Message, String>(
            elements: chatMessages,
            useStickyGroupSeparators: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            groupBy: (Message message) {
              return DateFormat('yyyy-MM-dd')
                  .format(message.createdAt!)
                  .toString();
            },
            itemBuilder: (context, Message message) {
              // This  function is used for creating ReplyMessage Widget..
              if (message.replyToMessageId != null) {
                Message replyMessage = chatMessages
                    .where((element) => element.id == message.replyToMessageId)
                    .first;
                message.replyContext = ReplyMessage(replyMessage: replyMessage);
              }
              return buildMessageBubble(message);
            },
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            controller: listScrollController,
            groupHeaderBuilder: (Message message) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30.0,
                child: Chip(
                  side: BorderSide.none,
                  backgroundColor: Colors.grey.shade200,
                  label: DateTime(
                              message.createdAt!.year,
                              message.createdAt!.month,
                              message.createdAt!.day) ==
                          DateTime(
                              todayDate.year, todayDate.month, todayDate.day)
                      ?  Text('Today',style: TextStyle(color: Colors.grey.shade600,fontSize: 11),)
                      : DateTime(
                                  message.createdAt!.year,
                                  message.createdAt!.month,
                                  message.createdAt!.day) ==
                              DateTime(todayDate.year, todayDate.month,
                                  todayDate.day - 1)
                          ?  Text('Yesterday',style: TextStyle(color: Colors.grey.shade600,fontSize: 11))
                          : Text(
                              DateFormat('MMM d, yyyy')
                                  .format(message.createdAt!),
                              style: TextStyle(color: Colors.grey.shade600,fontSize: 11),
                            ),
                ),
              ),
            ),
          )
        : const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          );
  }

  Widget buildMessageInput() {
    final messageProvider = Provider.of<MessagesProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;
    String messageId = '';
    return MessageInput(
      replyingTo: _focusedMessage,
      onTapEmptyInput: () {
        setState(() {
          _scrollButtonVisibility = true;
        });
        chatMessages.isNotEmpty ? _scrollDown() : () {};
      },
      onSubmit: (val, replyToMessageId) async {
        messageProvider.createMessage(
            channelId: widget.channelId,
            messageText: val,
            replyToMessageId: replyToMessageId);
        setState(() {
          chatMessages.add(
            Message(
              messageText: val,
              id: messageId,
              createdAt: DateTime.now(),
              isLocal: true,
              statuses: [],
              //TODO
              replyContext: _focusedMessage != null
                  ? ReplyMessage(replyMessage: _focusedMessage)
                  : null,
              createdBy: user!.id,
              channelId: widget.channelId,
            ),
          );
          newMessageText = 'new  message';
          _focusedMessage = null;
          WidgetsBinding.instance.addPostFrameCallback((_) => {_scrollDown()});
        });
      },
    );
  }
}

class Error extends StatelessWidget {
  const Error({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
