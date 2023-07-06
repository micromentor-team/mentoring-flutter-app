import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/data/models/messages/messages_provider.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/models/channels/channels_provider.dart';
import 'message_bubble/message_bubble.dart';
import 'message_input.dart';

class MessageDetailsModal extends StatefulWidget {
  const MessageDetailsModal(
      {Key? key,
      required this.channel,
      required this.message,
      required this.context})
      : super(key: key);

  final ChannelMessage message;
  final BuildContext context;
  final ChannelById channel;

  @override
  State<MessageDetailsModal> createState() => _MessageDetailsModalState();
}

class _MessageDetailsModalState extends State<MessageDetailsModal> {
  final TextEditingController _controller = TextEditingController();
  late ChannelMessage _message;
  late String _sentAt;
  bool _isEditing = false;

  void _onReplyTo() {
    Navigator.of(context).pop(true);
  }

  void _onClose() {
    Navigator.of(context).pop(false);
  }

  @override
  void initState() {
    _message = widget.message;
    _sentAt = DateFormat.Hm().format(_message.createdAt);
    _controller.text = _message.messageText!;
    super.initState();
  }

  Widget _buildCard(BuildContext context) {
    final isUser = _isCurrentUser(
      userId: _message.createdBy,
      context: context,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment:
                isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              // isUser
              //     ? const SizedBox()
              //     : Padding(
              //         padding: const EdgeInsets.only(
              //           right: 8.0,
              //           bottom: 8.0,
              //         ),
              //         child: ParticipantAvatar(
              //           radius: 15.0,
              //           participant: _message.participant,
              //         ),
              //       ),
              MessageBubble(
                message: _message,
                participants: widget.channel.participants,
                // textOnly: true,
              ),
            ],
          ),
          Visibility(
            visible: !_isEditing,
            child: _buildAuthor(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildReplyButton(context),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: _buildEditButton(context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: _buildDeleteButton(),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: _buildDeleteButton(),
              // )
            ],
          ),
        ],
      ),
    );
  }

  String _participantName({userId}) {
    final participant = widget.channel.participants
        .firstWhere((item) => item.user.id == userId);
    return participant.user.fullName!.trim().split(RegExp(' +')).take(1).join();
  }

  Widget _buildAuthor() {
    final isUser = _isCurrentUser(
      userId: _message.createdBy,
      context: context,
    );

    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: isUser
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 36.0, right: 8.0),
          child: RichText(
            maxLines: 1,
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text:
                      '${isUser ? 'You' : _participantName(userId: _message.createdBy)} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: 'at ',
                ),
                TextSpan(
                  text: _sentAt,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEditButton(BuildContext context) {
    final isUser = _isCurrentUser(
      userId: _message.createdBy,
      context: context,
    );

    if (!_isEditing && isUser) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.primary,
            size: 20.0,
          ),
        ),
        // elevation: 2.0,
        label: const Text('edit'),
        onPressed: () {
          setState(() {
            _isEditing = true;
          });
        },
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildReplyButton(BuildContext context) {
    if (!_isEditing) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            Icons.reply,
            color: Theme.of(context).colorScheme.primary,
            size: 20.0,
          ),
        ),
        // elevation: 2.0,
        label: const Text('reply'),
        onPressed: () {
          setState(() {
            _onReplyTo();
          });
        },
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildDeleteButton() {
    final isUser = _isCurrentUser(
      userId: _message.createdBy,
      context: context,
    );

    if (!_isEditing && isUser) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(
            Icons.delete_outlined,
            color: Colors.redAccent,
            size: 20.0,
          ),
        ),
        // elevation: 2.0,
        label: _message.deletedAt != null
            ? const Text('undo')
            : const Text('delete'),
        onPressed: () {
          // TODO: need to support undelete
          if (_message.deletedAt != null) {
            Provider.of<MessagesProvider>(context, listen: false).updateMessage(
              input: Input$ChannelMessageInput(
                channelId: widget.channel.id,
                id: _message.id,
                deletedAt: null,
              ),
            );
          } else {
            Provider.of<MessagesProvider>(context, listen: false).deleteMessage(
              deletePhysically: false,
              channelMessageId: _message.id,
            );
          }

          _onClose();
        },
      );
    } else {
      return const SizedBox();
    }
  }
  //   Widget _buildDeleteButton() {
  //   return InputChip(
  //     avatar: CircleAvatar(
  //       backgroundColor: Colors.grey.shade200,
  //       child: const Icon(
  //         Icons.close,
  //         color: Colors.red,
  //         size: 20.0,
  //       ),
  //     ),
  //     // elevation: 2.0,
  //     label: const Text('delete'),
  //     onPressed: () {},
  //   );
  // }

  Widget _buildInput() {
    return Visibility(
      visible: _isEditing,
      child: MessageInput(
        participants: widget.channel.participants,
        autoFocus: true,
        controller: _controller,
        onSubmit: (val, replyingToMessageId) {
          Provider.of<MessagesProvider>(context, listen: false).updateMessage(
            input: Input$ChannelMessageInput(
              channelId: widget.channel.id,
              id: _message.id,
              messageText: val,
            ),
          );
          _onClose();
        },
        submitIcon: Icons.check,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.4),
          elevation: 0,
          leading: IconButton(
            onPressed: _onClose,
            icon: const Icon(
              Icons.close,
            ),
          ),
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.4),
        body: SafeArea(
          left: true,
          top: false,
          right: true,
          bottom: true,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:
                  _isEditing ? MainAxisAlignment.end : MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    reverse: true,
                    children: [
                      _buildCard(context),
                    ],
                  ),
                ),
                // _buildCard(),
                _buildInput(),
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
