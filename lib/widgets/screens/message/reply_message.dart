import 'package:flutter/material.dart';
import '../../../data/models/message/message.dart';
class ReplyMessage extends StatelessWidget {
  const ReplyMessage({Key? key, this.replyMessage, this.onClose})
      : super(key: key);

  final Message? replyMessage;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return replyMessage == null
        ? const SizedBox()
        : Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: !replyMessage!.isLocal
                        ? Colors.grey.shade200
                        : Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: replyMessage!.isLocal
                                  ? Colors.lightBlue.shade600
                                  : Colors.grey,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(6.0),
                              )),
                          width: 5.0,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            replyMessage!.messageText,
                            maxLines: onClose != null ? 1 : 2,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              onClose == null
                  ? const SizedBox()
                  : Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        //  Hide the splash effect
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: const Icon(
                          Icons.close,
                          size: 16,
                        ),
                        onPressed: onClose,
                      ),
                    ),
            ],
          );
  }
}
