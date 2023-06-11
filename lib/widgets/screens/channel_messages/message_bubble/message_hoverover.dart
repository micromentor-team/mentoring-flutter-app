import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:provider/provider.dart';

import 'message_bubble.dart';

class MessageHoverover extends StatefulWidget {
  const MessageHoverover({
    Key? key,
    required this.message,
    this.onButtonOne,
    this.onButtonTwo,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  final MessageBubble message;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback? onButtonOne;
  final VoidCallback? onButtonTwo;

  @override
  State<MessageHoverover> createState() => _MessageHoveroverState();
}

class _MessageHoveroverState extends State<MessageHoverover> {
  final Duration _animationDuration = const Duration(milliseconds: 250);
  late bool _hovering;
  late VoidCallback _onButtonOne;
  late VoidCallback _onButtonTwo;

  bool _isCurrentUser({userId, context}) {
    return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
  }

  @override
  void initState() {
    super.initState();
    _hovering = false;
    _onButtonOne = widget.onButtonOne ??
        () {
          debugPrint("Button 1 action not provided");
        };

    _onButtonTwo = widget.onButtonTwo ??
        () {
          debugPrint("Button 2 action not provided");
        };
  }

  @override
  Widget build(BuildContext context) {
    final isUser = _isCurrentUser(
      userId: widget.message.message.createdBy,
      context: context,
    );

    Widget actionButtons = AnimatedOpacity(
      opacity: _hovering ? 1.0 : 0,
      duration: _animationDuration,
      curve: Curves.decelerate,
      child: Row(
        textDirection: isUser ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              splashRadius: 20.0,
              icon: const Icon(Icons.reply),
              iconSize: widget.iconSize ?? 24,
              color: widget.iconColor ?? Palette.kLogoColor,
              onPressed: _onButtonOne,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            splashRadius: 20.0,
            iconSize: widget.iconSize ?? 24,
            color: widget.iconColor ?? Palette.kLogoColor,
            onPressed: _onButtonTwo,
          ),
        ],
      ),
    );

    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _hovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _hovering = false;
        });
      },
      child: Row(
        children: [
          isUser ? actionButtons : const SizedBox(),
          widget.message,
          isUser ? const SizedBox() : actionButtons
        ],
      ),
    );
  }
}
