import 'dart:io';

import 'package:badges/badges.dart' as badges;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/data/models/channels/channel.dart';
import 'package:mm_flutter_app/data/models/channels/channels_provider.dart';
import 'package:mm_flutter_app/data/models/messages/message.dart';
import 'package:mm_flutter_app/data/models/messages/messages_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';

import 'message_bubble/message_bubble.dart';
import 'message_bubble/message_hoverover.dart';
import 'message_bubble/message_peeker.dart';
import 'message_details.dart';
import 'message_input.dart';

class ChannelMessagesScreen extends StatelessWidget {
  const ChannelMessagesScreen({Key? key, required this.channelId})
      : super(key: key);
  final String? channelId;

  // void _openChannelDetailsScreen(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //         builder: (BuildContext context) {
  //           return ChannelDetailsScreen(
  //             channelId: channelId,
  //           );
  //         },
  //         fullscreenDialog: true),
  //   );
  // }

  // void _openChannelSettings(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //         builder: (BuildContext context) {
  //           return ChannelSettings(
  //             channelId: channelId,
  //           );
  //         },
  //         fullscreenDialog: true),
  //   );
  // }

  // void _openAddParticipantsScreen(context, channel) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //         builder: (BuildContext context) {
  //           return AddParticipantsScreen(
  //             channel: channel,
  //           );
  //         },
  //         fullscreenDialog: true),
  //   );
  // }

  String _channelName({user, channel}) {
    final participant =
        channel.participants?.firstWhere((item) => item.id != user?.id);
    final channelName = participant.fullName;
    return channelName;
  }

  @override
  Widget build(BuildContext context) {
    final channelsProvider = Provider.of<ChannelsProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return channelsProvider.findChannelByChannelId(
      channelId: channelId,
      onData: (data) {
        Channel channel = Channel.fromJson(data);
        final channelName = _channelName(user: user, channel: channel);

        return Scaffold(
          appBar: AppBar(
            title: InkWell(
              child: Text(channelName),
              onTap: () => {
                FocusManager.instance.primaryFocus?.unfocus(),
                // _openChannelDetailsScreen(context)
              },
            ),
            // actions: [
            //   Center(
            //     child: InkWell(
            //       onTap: () => {
            //         FocusManager.instance.primaryFocus?.unfocus(),
            //         // _openAddParticipantsScreen(context, channel)
            //       },
            //       child: SizedBox(
            //         width: 90.0,
            //         child: ParticipantStack.channel(
            //           channel: channel,
            //           participantRadius: 15.0,
            //         ),
            //       ),
            //     ),
            //   )
            // ],
          ),
          body: ChannelMessages(
            channel: channel,
          ),
        );
      },
    );
  }
}

// class SubscribeForMessages extends StatefulWidget {
//   const SubscribeForMessages({Key? key, required this.channel})
//       : super(key: key);
//   final Channel channel;
//
//   @override
//   State<SubscribeForMessages> createState() => _SubscribeForMessagesState();
// }
//
// class _SubscribeForMessagesState extends State<SubscribeForMessages> {
//   @override
//   void initState() {
//     final messagesProvider =
//         Provider.of<MessagesProvider>(context, listen: false);
//     messagesProvider.subscribeToChannel(channelId: widget.channel.id);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ChannelMessages(
//       channel: widget.channel,
//     );
//   }
// }

class ChannelMessages extends StatelessWidget {
  const ChannelMessages({Key? key, required this.channel}) : super(key: key);
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final messagesProvider = Provider.of<MessagesProvider>(context);
    return messagesProvider.queryMessages(
      channelId: channel.id,
      onData: (data) {
        if (data != null) {
          // List messages = data.toList();
          final List<Message> messages =
              List<Message>.from(data.map((item) => Message.fromJson(item)));
          return ChannelChat(
            channel: channel,
            chatMessages: messages,
          );
        }
      },
    );
  }
}

class ChannelChat extends StatefulWidget {
  const ChannelChat({
    Key? key,
    required this.channel,
    required this.chatMessages,
  }) : super(key: key);
  final Channel channel;
  final List<Message> chatMessages;

  @override
  State<ChannelChat> createState() => _ChannelChatState();
}

class _ChannelChatState extends State<ChannelChat> {
  final TextEditingController messageTextController = TextEditingController();
  final ScrollController listScrollController = ScrollController();
  final Duration _animationDuration = const Duration(milliseconds: 250);
  double _bottomViewInset = 0; // The "safe" height of the Input
  bool _scrollButtonVisibility = false;
  bool _unreadMessages = false; // Non-local Message exists outside of viewport
  Message? _focusedMessage; // Intended reply Message
  // String newMessageText = ''; // Intended edited text body

  void _scrollListener() {
    if (listScrollController.position.extentBefore > 80 &&
        _scrollButtonVisibility != true) {
      setState(() {
        _scrollButtonVisibility = true;
      });
    }
    if (listScrollController.position.atEdge &&
        listScrollController.position.pixels ==
            listScrollController.position.minScrollExtent &&
        _scrollButtonVisibility != false) {
      setState(() {
        if (_unreadMessages != false) {
          _unreadMessages = false;
        }
        _scrollButtonVisibility = false;
      });
    }
    if (MediaQuery.of(context).viewInsets.bottom > 0 &&
        _scrollButtonVisibility != true) {
      setState(() {
        _scrollButtonVisibility = true;
      });
    }
  }

  @override
  void initState() {
    final messagesProvider =
        Provider.of<MessagesProvider>(context, listen: false);
    messagesProvider.subscribeToChannel(channelId: widget.channel.id);
    listScrollController.addListener(_scrollListener);
    super.initState();
  }

  _markMessageRead() {
    Provider.of<MessagesProvider>(context, listen: false)
        .markMessageRead(widget.channel.id);
  }

  @override
  void didUpdateWidget(covariant ChannelChat oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.chatMessages.length < widget.chatMessages.length) {
      debugPrint(
          'didUpdateWidget: old length: ${oldWidget.chatMessages.length} new: ${widget.chatMessages.length}');
      _markMessageRead();
      if (_isCurrentUser(
          userId: widget.chatMessages.last.createdBy, context: context)) {
        _scrollDown();
      } else if (_unreadMessages != true) {
        _unreadMessages = true;
      }
    }
  }

  @override
  void dispose() {
    messageTextController.dispose();
    listScrollController.dispose();
    super.dispose();
  }

  void _scrollDown() {
    if (listScrollController.hasClients && widget.chatMessages.isNotEmpty) {
      listScrollController.animateTo(
        listScrollController.position.minScrollExtent,
        duration: _animationDuration,
        curve: Curves.easeInOutBack,
      );
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
        // else if (_reply == Message) {
        //   print(_reply);
        //   int _messageIndex = widget.chatMessages
        //       .indexWhere((element) => element.id == message.id);
        //   setState(() {
        //     widget.chatMessages
        //         .replaceRange(_messageIndex, _messageIndex + 1, [_reply]);
        //   });
        // }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          children: [
            BuildMessageBubbles(
              channel: widget.channel,
              chatMessages: widget.chatMessages,
              participants: widget.channel.participants,
              bottomViewInset: _bottomViewInset,
              listScrollController: listScrollController,
              onOpenMessageDetails: (message) =>
                  _openMessageDetailsModal(context, message),
              onSetReplyingTo: (message) {
                setState(() {
                  _focusedMessage = message;
                });
              },
            ),
            BuildScrollButton(
              buttonVisibility: _scrollButtonVisibility,
              bottomViewInset: _bottomViewInset,
              unreadMessages: _unreadMessages,
              animationDuration: _animationDuration,
              onPressed: () => _scrollDown(),
            ),
          ],
        ),
        BuildMessageInput(
          channelId: widget.channel.id,
          participants: widget.channel.participants,
          bottomViewInset: _bottomViewInset,
          replyingTo: _focusedMessage,
          onClearReply: () {
            setState(() {
              _focusedMessage = null;
            });
          },
          onSetBottomInset: (value) {
            setState(() {
              _bottomViewInset = value;
            });
          },
        )
      ],
    );
  }
}

class BuildMessageBubbles extends StatelessWidget {
  const BuildMessageBubbles({
    Key? key,
    required this.channel,
    required this.participants,
    required this.chatMessages,
    required this.bottomViewInset,
    required this.listScrollController,
    required this.onOpenMessageDetails,
    required this.onSetReplyingTo,
  }) : super(key: key);

  final Channel channel;
  final List participants;
  final List<Message> chatMessages;
  final double bottomViewInset;
  final ScrollController listScrollController;
  final Function(Message message) onOpenMessageDetails;
  final Function(Message message) onSetReplyingTo;

  @override
  Widget build(BuildContext context) {
    List<Message> messages = chatMessages.reversed.toList();
    return chatMessages.isNotEmpty
        ? GroupedListView<Message, String>(
            elements: messages,
            clipBehavior: Clip.none,
            // We do not want the builder to sort again...
            sort: false,
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            padding: EdgeInsets.only(
              left: 10.0,
              top: 10.0,
              right: 10.0,
              bottom: kIsWeb || Platform.isMacOS
                  ? bottomViewInset + 10.0
                  : bottomViewInset,
            ),
            groupBy: (message) => DateFormat('yyyy-MM-dd')
                .format(DateTime.parse(message.createdAt))
                .toString(),
            indexedItemBuilder: (context, Message message, i) {
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
            groupHeaderBuilder: (Message message) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30.0,
                child: Center(
                  child: Chip(
                    side: BorderSide.none,
                    backgroundColor: Colors.grey.shade200,
                    label: Text(
                      // 🚨 TODO: Currently looks broken because the sentAt is not localized
                      DateTime.now().day ==
                              DateTime.parse(message.createdAt).day
                          ? 'Today'
                          : DateFormat('MMM d, yyyy')
                              .format(DateTime.parse(message.createdAt)),
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 11),
                    ),
                  ),
                ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
  final Message message;
  final List participants;
  final List<Message> chatMessages;
  final VoidCallback? onSwipeLeft;
  final VoidCallback? onSwipeRight;

  @override
  Widget build(BuildContext context) {
    Message? replyingTo;
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

class BuildMessageInput extends StatelessWidget {
  const BuildMessageInput(
      {Key? key,
      required this.channelId,
      required this.bottomViewInset,
      required this.participants,
      required this.onClearReply,
      required this.onSetBottomInset,
      this.replyingTo})
      : super(key: key);

  final String channelId;
  final double bottomViewInset;
  final Message? replyingTo;
  final List participants;
  final Function onClearReply;
  final Function onSetBottomInset;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 📌  This is where we're determining our scroll padding, for the cool transparent stuff.
        // 1. Get the height of the input section as we have declared it; omitting any system padding
        final double inputWidgetHeight =
            MediaQuery.of(context).size.height - constraints.maxHeight;
        // 2. Get what the ~device~ understands the actual viewport to be; before any of our implementations
        // final EdgeInsets viewInsets = EdgeInsets.fromViewPadding(
        //   View.of(context).viewInsets,
        //   View.of(context).devicePixelRatio,
        // );
        // 3. Get the difference between our widget height and the current device bottom (inclusive of any system element)
        final double inputHeight = inputWidgetHeight; // - viewInsets.bottom;
        // ---------------------------------------------------------------------------------
        // 🕵️‍♀️  If the ~device~ understands it has a system element impeding the viewport bottom,
        // it prefers the element constraints, nullifying our implemented `SafeArea`...
        // ---------------------------------------------------------------------------------
        // 4. Finally, add a callback to the end of the paint and update our double for the keyboard/system element
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // Given the value is different...
          if (bottomViewInset != inputWidgetHeight &&
              bottomViewInset != inputHeight) {
            onSetBottomInset(inputHeight);
          }
        });

        return IntrinsicHeight(
          child: MessageInput(
            replyingTo: replyingTo,
            participants: participants,
            onSubmit: (val, replyToMessageId) {
              Provider.of<MessagesProvider>(context, listen: false)
                  .createMessage(
                      channelId: channelId,
                      messageText: val,
                      replyToMessageId: replyToMessageId);

              onClearReply();
            },
            onClearReply: onClearReply,
          ),
        );
      },
    );
  }
}

class BuildScrollButton extends StatelessWidget {
  const BuildScrollButton(
      {Key? key,
      required this.buttonVisibility,
      required this.bottomViewInset,
      required this.unreadMessages,
      required this.animationDuration,
      required this.onPressed,
      required})
      : super(key: key);

  final bool buttonVisibility;
  final double bottomViewInset;
  final bool unreadMessages;
  final Duration animationDuration;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: buttonVisibility ? 1.0 : 0.0,
      duration: animationDuration,
      child: Visibility(
        visible: buttonVisibility,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: 10.0,
              bottom: bottomViewInset,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: badges.Badge(
                    showBadge: unreadMessages,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  mini: true,
                  onPressed: onPressed,
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool _isCurrentUser({context, userId}) {
  return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
}
