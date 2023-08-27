import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class NotificationBubble extends StatelessWidget {
  final int notifications;

  static const double _notificationBubbleHeight = 20.0;
  static const double _notificationBubbleSingleCharWidth = 20.0;
  static const double _notificationBubbleDoubleCharWidth = 24.0;
  static const double _notificationBubbleTripleCharWidth = 28.0;

  const NotificationBubble({
    super.key,
    required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    double bubbleWidth;
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
    return Align(
      alignment: Alignment.topLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_notificationBubbleHeight),
        child: Container(
          width: bubbleWidth,
          height: _notificationBubbleHeight,
          color: theme.colorScheme.error,
          child: Center(
            child: Text(
              notificationText,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onError,
              ),
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
