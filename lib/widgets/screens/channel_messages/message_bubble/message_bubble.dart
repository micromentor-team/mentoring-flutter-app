import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/emoji_utils/emoji_utils.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../providers/messages_provider.dart';
import '../reply_message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
    required this.participants,
    this.replyingTo,
  }) : super(key: key);
  final List<ChannelParticipant> participants;
  final ChannelMessage message;
  final ChannelMessage? replyingTo;

  Future<void> _onOpenLink(LinkableElement link) async {
    try {
      if (await canLaunchUrl(link.url as Uri)) {
        await launchUrl(link.url as Uri);
      } else {
        throw 'Could not launch $link';
      }
    } catch (error) {
      debugPrint('$error');
    }
  }

  bool _isCurrentUser({userId, context}) {
    return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
  }

  String _participantName({userId}) {
    final ChannelParticipant? participant =
        participants.where((item) => item.user.id == userId).firstOrNull;
    if (participant != null) {
      return participant.user.fullName!
          .trim()
          .split(RegExp(' +'))
          .take(1)
          .join();
    }
    return '';
  }

  Widget _buildMessageStatus(isUser) {
    String? status;
    if (message.deletedAt != null) {
      if (isUser) {
        status = 'deleted';
      }
    } else if (message.editedAt != null) {
      status = ' (edited)';
    }

    if (status != null) {
      return Text(
        status,
        style: TextStyle(
          fontSize: 10.0,
          fontStyle: FontStyle.italic,
          color:
              // If the message is only emojis, we need grey
              EmojiUtils.strictlyEmojis(message.messageText!)
                  ? Colors.grey
                  : isUser
                      ? Colors.white
                      : Colors.grey,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildMessageText(isUser) {
    final isEmoji = EmojiUtils.strictlyEmojis(message.messageText!);

    if (message.deletedAt != null && !isUser) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 20.0,
        ),
        child: Text(
          "Deleted",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color:
                // If the message is only emojis, we need grey
                EmojiUtils.strictlyEmojis(message.messageText!)
                    ? Colors.grey
                    : isUser
                        ? Colors.white
                        : Colors.grey,
          ),
        ),
      );
    } else {
      return Padding(
        // If the message is only emojis, we need to add some padding to unobstruct sentAt
        padding: isEmoji
            ? const EdgeInsets.only(
                bottom: 12.0,
              )
            : EdgeInsets.zero,
        child: SelectableLinkify(
          //  If the message is only emojis, we don't need the invisible character
          text: isEmoji
              ? message.messageText!
              : '${message.messageText}                ',
          //  Concatenating white space and an invisible character saves us from having to use a LayoutBuilder.
          //  The Text sees the invisible character, so it does not trim the extra whitespace we want to use for layout.
          //  When the Stack sees our addition, it paints our positioned sentAt widget (8 in this case) whitespaces
          //  the right. Voila, no math! 🪄
          onOpen: (link) => _onOpenLink(link),
          linkStyle: TextStyle(
            color: isUser ? Colors.white : Colors.black,
          ),
          style: TextStyle(
            fontSize: isEmoji ? 30.0 : null,
            decoration:
                message.deletedAt != null ? TextDecoration.lineThrough : null,
            decorationThickness: 2.0,
            decorationColor: Colors.red,
            color: isUser ? Colors.white : Colors.black,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final sentAt = DateFormat.jm().format(message.createdAt);
    final isUser = _isCurrentUser(
      userId: message.createdBy,
      context: context,
    );
    // 🚨 TODO: If the message has ANY related content/attachments: maintain `false`.
    final isEmoji = EmojiUtils.strictlyEmojis(message.messageText!);

    return Padding(
      // Bubble padding
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Material(
                  // If the message is only emojis, ditch the elevation and don't deal with the shadow.
                  elevation: isEmoji ? 0 : 4.0,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(8),
                    topRight: const Radius.circular(8),
                    bottomLeft: isUser ? const Radius.circular(8) : Radius.zero,
                    bottomRight:
                        isUser ? Radius.zero : const Radius.circular(8),
                  ),
                  // If the message is only emojis, make the bubble transparent
                  color: isEmoji
                      ? Colors.transparent
                      : isUser
                          ? Colors.lightBlue
                          : Colors.grey.shade200,
                  child: Padding(
                    // Message content padding
                    padding: EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      right: 8.0,
                      // If the message is only emojis, we'll provide this padding for sentAt down the line
                      bottom: isEmoji ? 0 : 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        isUser
                            ? const SizedBox()
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (participants.length > 2)
                                    Text(
                                      _participantName(
                                          userId: message.createdBy),
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  _buildMessageStatus(isUser)
                                ],
                              ),
                        // TODO: Paint attachments/content
                        replyingTo == null || message.deletedAt != null
                            ? const SizedBox()
                            : Padding(
                                // Padding between attachment and message body
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: ReplyMessage(
                                  replyMessage: replyingTo!,
                                  participants: participants,
                                ),
                              ),
                        Stack(
                          children: [
                            _buildMessageText(isUser),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Row(
                                children: [
                                  Text(
                                    sentAt,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color:
                                          // If the message is only emojis, we need grey
                                          EmojiUtils.strictlyEmojis(
                                                  message.messageText!)
                                              ? Colors.grey
                                              : isUser
                                                  ? Colors.white
                                                  : Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  isUser
                                      ? (message.statuses!.isEmpty
                                          ? const Icon(
                                              Icons.check,
                                              size: 10,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.done_all,
                                              size: 10,
                                              color: Colors.white,
                                            ))
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // _buildMessageStatus(isUser)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
