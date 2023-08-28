import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class NotificationBubble extends StatelessWidget {
  final int notifications;
  final Color? bubbleColor;
  final Color? textColor;
  final bool enlarge;

  static const double _notificationBubbleHeight = 20.0;
  static const double _notificationBubbleSingleCharWidth = 20.0;
  static const double _notificationBubbleDoubleCharWidth = 24.0;
  static const double _notificationBubbleTripleCharWidth = 28.0;
  static const double _enlargeFactor = 1.2;

  const NotificationBubble({
    super.key,
    required this.notifications,
    this.bubbleColor,
    this.textColor,
    this.enlarge = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    double bubbleWidth;
    double bubbleHeight = _notificationBubbleHeight;
    String notificationText;
    if (notifications > Limits.maxNotificationsDisplayed) {
      bubbleWidth = _notificationBubbleTripleCharWidth;
      notificationText = Identifiers.notificationOverflow;
    } else if (notifications > 9) {
      bubbleWidth = _notificationBubbleDoubleCharWidth;
      notificationText = notifications.toString();
    } else {
      bubbleWidth = _notificationBubbleSingleCharWidth;
      notificationText = notifications.toString();
    }
    TextStyle? textStyle = theme.textTheme.labelSmall;
    if (enlarge) {
      textStyle = theme.textTheme.labelLarge;
      bubbleWidth *= _enlargeFactor;
      bubbleHeight *= _enlargeFactor;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(bubbleHeight),
      child: Container(
        width: bubbleWidth,
        height: bubbleHeight,
        color: bubbleColor ?? theme.colorScheme.error,
        child: Center(
          child: Text(
            notificationText,
            style: textStyle?.copyWith(
              color: textColor ?? theme.colorScheme.onError,
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
