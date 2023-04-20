import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../data/models/message/message.dart';
import '../../../data/models/message/messages_provider.dart';
import '../message/input.dart';
import 'package:mm_flutter_app/widgets/screens/message/message_bubble/message_bubble.dart';
import 'package:mm_flutter_app/themes/palette.dart';

class MessageDetailsModal extends StatefulWidget {
  const MessageDetailsModal(
      {Key? key, required this.message, required this.context})
      : super(key: key);

  final Message message;
  final BuildContext context;

  @override
  State<MessageDetailsModal> createState() => _MessageDetailsModalState();
}

class _MessageDetailsModalState extends State<MessageDetailsModal> {
  final TextEditingController _controller = TextEditingController();
  late Message _message;
  late String _sentAt;
  bool _isEditing = false;

  void _onReplyTo() {
    Navigator.of(context).pop(true);
  }

  void _onClose() {
    Navigator.of(context).pop(false);
  }

  void _onDelete({messageId})async{
    final messageProvider = Provider.of<MessagesProvider>(context,listen: false);
    await messageProvider.deleteMessage(messageId: messageId).then((value) => Navigator.of(context).pop());
  }

  void _onSubmitEdit(Message editedText) async {
    final messageProvider = Provider.of<MessagesProvider>(context,listen: false);
    await messageProvider
        .updateMessage(
            messageId: editedText.id, messageText: editedText.messageText)
        .then((value) => Navigator.of(context).pop(editedText));
  }

  @override
  void initState() {
    _message = widget.message;
    _sentAt = DateFormat.Hm().format(_message.createdAt!);
    _controller.text = _message.messageText;
    super.initState();
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: _message.isLocal
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              _message.isLocal
                  ? const SizedBox()
                  : const Padding(
                      padding: EdgeInsets.only(
                        right: 8.0,
                        bottom: 8.0,
                      ),
                      child: Icon(Icons.image),
                    ),
              MessageBubble(
                message: _message,
                textOnly: true,
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
              _buildReplyButton(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: _buildEditButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: _buildDeleteButton(),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAuthor() {
    return Row(
      mainAxisAlignment:
          _message.isLocal ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: _message.isLocal
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
                  text: '${_message.isLocal ? 'You' : ''} ',
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

  Widget _buildDeleteButton(){
    if (_message.isLocal) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(
            Icons.delete,
            color: Colors.red,
            size: 20.0,
          ),
        ),
        // elevation: 2.0,
        label: const Text('delete'),
        onPressed: () {
          // create query function of edit message
          _onDelete(messageId: _message.id);
        },
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildEditButton() {
    if (!_isEditing && _message.isLocal) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(
            Icons.edit,
            color: Palette.kLogoColor,
            size: 20.0,
          ),
        ),
        // elevation: 2.0,
        label: const Text('edit'),
        onPressed: () {
          // create query function of edit message
          setState(() {
            _isEditing = true;
          });
        },
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildReplyButton() {
    if (!_isEditing) {
      return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(
            Icons.reply,
            color: Palette.kLogoColor,
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

  Widget _buildInput() {
    return Visibility(
      visible: _isEditing,
      child: MessageInput(
        autoFocus: true,
        controller: _controller,
        onSubmit: (val) {
          setState(() {
            _message = Message(
              id: _message.id,
              isLocal: _message.isLocal,
              messageText: val,
              createdAt: _message.createdAt,
              updatedAt: DateTime.now(),
              createdBy: _message.createdBy,
              channelId: _message.channelId,
            );
          });
          _onSubmitEdit(_message);
          // print(val);
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
                      _buildCard(),
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
