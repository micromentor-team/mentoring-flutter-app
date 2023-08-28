import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';

import '../../../providers/messages_provider.dart';
import 'reply_message.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({
    Key? key,
    required this.participants,
    required this.onSubmit,
    this.onClearReply,
    this.controller,
    this.replyingTo,
    this.onTapEmptyInput,
    this.submitIcon,
    this.autoFocus = false,
  }) : super(key: key);

  final List<ChannelParticipant> participants;
  final TextEditingController? controller;
  final VoidCallback? onTapEmptyInput;
  final Function(String messageText, String? replyingToMessageId) onSubmit;
  final Function? onClearReply;
  final ChannelMessage? replyingTo;
  final IconData? submitIcon;
  final bool? autoFocus;

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  late TextEditingController _controller;
  late bool _autoFocus;
  bool _enableSend = false;
  ChannelMessage? _replyingTo;

  void _sendMessage() {
    widget.onSubmit(_controller.text, _replyingTo?.id);
    setState(() {
      _controller.clear();
      _replyingTo = null;
    });
  }

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      setState(() {
        _enableSend = _controller.text.isNotEmpty;
      });
    });
    _autoFocus = widget.autoFocus == true;
    _replyingTo = widget.replyingTo;
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
    _replyingTo = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Container(
      color: theme.colorScheme.surfaceVariant,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: Insets.paddingMedium,
          top: Insets.paddingMedium,
          bottom: Insets.paddingMedium,
          end: Insets.paddingExtraSmall,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.canvasColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(Radii.roundedRectRadiusLarge),
                  ),
                ),
                child: Column(
                  children: [
                    if (_replyingTo != null)
                      Padding(
                        padding: const EdgeInsets.all(Insets.paddingSmall),
                        child: ReplyMessage(
                          replyMessage: _replyingTo!,
                          participants: widget.participants,
                          onClose: () {
                            setState(() {
                              _replyingTo = null;
                            });
                            widget.onClearReply!();
                          },
                        ),
                      ),
                    TextField(
                      minLines: 1,
                      maxLines: 10,
                      style: theme.textTheme.bodyMedium,
                      autofocus: _autoFocus,
                      controller: _controller,
                      keyboardType: TextInputType.multiline,
                      onTap: widget.onTapEmptyInput,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: Insets.paddingExtraSmall,
                          horizontal: Insets.paddingMedium,
                        ),
                        hintText: l10n.messagesInputHint,
                        hintStyle: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.disabledColor,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: Insets.paddingExtraSmall),
            if (!_enableSend)
              IconButton(
                icon: const Icon(
                  Icons.mic_outlined,
                ),
                onPressed: () {
                  //TODO: Implement voice input.
                },
              ),
            if (_enableSend)
              IconButton(
                icon: const Icon(
                  Icons.send_outlined,
                ),
                onPressed: _sendMessage,
                color: theme.colorScheme.onSecondary,
                style: IconButton.styleFrom(
                    backgroundColor: theme.colorScheme.secondary),
              ),
          ],
        ),
      ),
    );
  }
}
