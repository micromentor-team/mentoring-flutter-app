import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class NotificationBubble extends StatelessWidget {
  final int notifications;
  final double containerLength;

  const NotificationBubble({
    super.key,
    required this.notifications,
    required this.containerLength,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double bubbleHeight = containerLength / 2;
    double bubbleWidth;
    String notificationText;
    double textSize = bubbleHeight * 0.6;
    if (notifications > Limits.maxNotificationsDisplayed) {
      bubbleWidth = bubbleHeight * 1.6;
      notificationText = Identifiers.notificationOverflow;
    } else {
      bubbleWidth = bubbleHeight;
      notificationText = notifications.toString();
    }
    return Container(
      height: containerLength,
      alignment: Alignment.topLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(bubbleHeight),
        child: Container(
          width: bubbleWidth,
          height: bubbleHeight,
          color: theme.colorScheme.error,
          child: Center(
            child: Text(
              notificationText,
              style: theme.textTheme.labelSmall?.copyWith(
                fontSize: textSize,
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
