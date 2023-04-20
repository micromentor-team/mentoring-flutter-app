import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/screens/message/reply_message.dart';
import '../../../data/models/message/message.dart';
import '../message/conversationScreen.dart';
class MessageInput extends StatefulWidget {
  const MessageInput({
    Key? key,
    required this.onSubmit,
    this.controller,
    this.replyingTo,
    this.onTapEmptyInput,
    this.submitIcon,
    this.autoFocus = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final VoidCallback? onTapEmptyInput;
  final Function(String messageText) onSubmit;
  final Message? replyingTo;
  final IconData? submitIcon;
  final bool? autoFocus;

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  late TextEditingController _controller;
  late bool _autoFocus;

  String _messageText = '';
  Message? _replyingTo;
  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      setState(() {});
    });
    _autoFocus = widget.autoFocus == true;
    _replyingTo = widget.replyingTo;
    _messageText = _controller.text;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MessageInput oldWidget) {
    setState(() {
      _replyingTo = widget.replyingTo;
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    _messageText = '';
    _replyingTo = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          border: Border.all(
            color: Colors.grey.shade400,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                children: [
                  _replyingTo == null
                      ? const SizedBox()
                      : ReplyMessage(
                          replyMessage: _replyingTo,
                          onClose: () {
                            setState(() {
                              _replyingTo = null;
                            });
                            // print(_replyingTo);
                          },
                        ),
                  TextField(
                    minLines: 1,
                    maxLines: 10,
                    autofocus: _autoFocus,
                    controller: _controller,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    onTap: widget.onTapEmptyInput,
                    onChanged: (value) {
                      setState(() {
                        _messageText = value;
                      });
                    },
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      hintText: 'New Message',
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              splashRadius: 8.0,
              onPressed: () {
                widget.onSubmit(_messageText);
                setState(() {
                  _messageText = '';
                  _controller.clear();
                  _replyingTo = null;
                });
              },
              icon: Icon(
                widget.submitIcon ?? Icons.send_rounded,
                size: 20.0,
                color: _messageText.isEmpty ? Colors.grey : Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
