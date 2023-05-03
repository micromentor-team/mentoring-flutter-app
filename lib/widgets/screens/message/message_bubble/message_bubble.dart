import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/models/message/message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
    this.textOnly = false,
  }) : super(key: key);

  final Message message;
  final bool? textOnly;

  Future<void> _onOpenLink(LinkableElement link) async {
    try {
      if (await canLaunch(link.url)) {
        await launch(link.url);
      } else {
        throw 'Could not launch $link';
      }
    } catch (error) {
      debugPrint('$error');
    }
  }

  MainAxisAlignment _getMainAxisAlignment() {
    if (message.isLocal) {
      return MainAxisAlignment.end;
    } else {
      return MainAxisAlignment.start;
    }
  }

  @override
  Widget build(BuildContext context) {
    final sentAt = DateFormat.jm().format(message.createdAt!);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: _getMainAxisAlignment(),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        child: Material(
                          elevation: 3.0,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(8),
                            topRight: const Radius.circular(8),
                            bottomLeft: message.isLocal
                                ? const Radius.circular(8)
                                : Radius.zero,
                            bottomRight: message.isLocal
                                ? Radius.zero
                                : const Radius.circular(8),
                          ),
                          color: message.isLocal
                              ? Colors.blue
                              : Colors.grey.shade200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              message.replyContext ?? const SizedBox(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SelectableLinkify(
                                        text: textOnly == true
                                            ? message.messageText
                                            : message.messageText + '         ',
                                        onOpen: (link) => _onOpenLink(link),
                                        linkStyle: TextStyle(
                                          color: message.isLocal
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                        style: TextStyle(
                                          color: message.isLocal
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      textOnly == true
                          ? const SizedBox()
                          : Positioned(
                              right: 6,
                              bottom: 6,
                              child: Row(
                                children: [
                                  Text(
                                    sentAt,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .merge(
                                          TextStyle(
                                            fontSize: 9,
                                            color: message.isLocal
                                                ? Colors.white
                                                : Colors.grey,
                                          ),
                                        ),
                                    textAlign: TextAlign.right,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  message.isLocal
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
                                  // const Icon(Icons.check_circle,size: 10,)
                                ],
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          message.editedAt != null
              ? const Text(
                  '(edited)',
                  style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w500),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
