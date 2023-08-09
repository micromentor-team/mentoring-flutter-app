import 'package:flutter/material.dart';

// 🚨 IF YOU ARE PROVIDING THE CONTROLLER YOU MUST DISPOSE MANUALLY

class MessagePeeker extends StatefulWidget {
  const MessagePeeker({
    Key? key,
    required this.child,
    this.onSwipeLeft,
    this.onSwipeRight,
    this.controller,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  final Widget child;
  final AnimationController? controller;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback? onSwipeLeft;
  final VoidCallback? onSwipeRight;

  @override
  State<MessagePeeker> createState() => _MessagePeekerState();
}

class _MessagePeekerState extends State<MessagePeeker>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _replyAnimation;
  final Duration _animationDuration = const Duration(milliseconds: 150);
  final double _throwDistance = 0.3;
  late VoidCallback _onSwipeLeft;
  late VoidCallback _onSwipeRight;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ??
        AnimationController(
          vsync: this,
          duration: _animationDuration,
        );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(curve: Curves.decelerate, parent: _controller),
    );
    _replyAnimation = _controller.drive(
      Tween<double>(begin: 0.0, end: 0.0),
    );
    // Instantiate the missing handlers missing one
    _onSwipeLeft = widget.onSwipeLeft ??
        () {
          debugPrint("Left Swipe Not Provided");
        };

    _onSwipeRight = widget.onSwipeRight ??
        () {
          debugPrint("Right Swipe Not Provided");
        };
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    if (_controller == widget.controller) {
      return;
    } else {
      _controller.dispose();
    }
    super.dispose();
  }

  void _runAnimation({required bool rightDrag}) {
    _slideAnimation = Tween(
      begin: const Offset(0.0, 0.0),
      end: Offset(rightDrag ? _throwDistance : -_throwDistance, 0.0),
    ).animate(
      CurvedAnimation(curve: Curves.decelerate, parent: _controller),
    );
    if (rightDrag) {
      _replyAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(curve: Curves.decelerate, parent: _controller),
      );
    }
    _controller.forward().whenComplete(() {
      if (!rightDrag) {
        _onSwipeLeft();
      }
      _controller.reverse().whenComplete(() {
        if (rightDrag) {
          _replyAnimation = _controller.drive(Tween(begin: 0.0, end: 0.0));
          _onSwipeRight();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 1 && widget.onSwipeRight != null) {
          _runAnimation(rightDrag: true);
        }
        if (details.delta.dx < -1 && widget.onSwipeLeft != null) {
          _runAnimation(rightDrag: false);
        }
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedOpacity(
                opacity: _replyAnimation.value,
                duration: _animationDuration,
                curve: Curves.decelerate,
                child: Icon(
                  Icons.reply,
                  size: widget.iconSize ?? 24,
                  color:
                      widget.iconColor ?? Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          SlideTransition(
            position: _slideAnimation,
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
