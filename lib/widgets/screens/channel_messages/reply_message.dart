import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/messages/message.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';

class ReplyMessage extends StatelessWidget {
  const ReplyMessage(
      {Key? key,
      required this.replyMessage,
      required this.participants,
      this.onClose})
      : super(key: key);
  final List participants;
  final Message replyMessage;
  final VoidCallback? onClose;

  bool _isCurrentUser({userId, context}) {
    return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
  }

  String _participantName({userId}) {
    final User participant = participants
        .firstWhere((item) => item.id == userId, orElse: () => null);
    return participant.fullName!.trim().split(RegExp(' +')).take(1).join();
  }

  @override
  Widget build(BuildContext context) {
    final isUser = _isCurrentUser(
      userId: replyMessage.createdBy,
      context: context,
    );
    return Container(
      decoration: BoxDecoration(
        color: isUser ? Colors.lightBlue.shade100 : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          // Floats the close icon to the top
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isUser ? Colors.lightBlue.shade600 : Colors.grey,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6.0),
                  bottomLeft: Radius.circular(6.0),
                ),
              ),
              width: 8.0,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _participantName(userId: replyMessage.createdBy),
                    maxLines: 1,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    replyMessage.messageText,
                    maxLines: 1,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            onClose == null ? const SizedBox() : const Spacer(),
            onClose == null
                ? const SizedBox()
                : IconButton(
                    padding: EdgeInsets.zero,
                    // An empty BoxConstraints overrides the default size, moreso than setting the visualDensity
                    constraints: const BoxConstraints(),
                    //  Hide the splash effect
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: const Icon(
                      Icons.close,
                      size: 16,
                    ),
                    onPressed: onClose,
                  ),
          ],
        ),
      ),
    );
  }
}
