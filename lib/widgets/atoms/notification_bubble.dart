import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class NotificationBubble extends StatelessWidget {
  final int notifications;

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
      bubbleWidth = Dimensions.notificationBubbleHeight * 1.50;
      notificationText = Identifiers.notificationOverflow;
    } else if (notifications > 9) {
      bubbleWidth = Dimensions.notificationBubbleHeight * 1.25;
      notificationText = notifications.toString();
    } else {
      bubbleWidth = Dimensions.notificationBubbleHeight;
      notificationText = notifications.toString();
    }
    return Align(
      alignment: Alignment.topLeft,
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(Dimensions.notificationBubbleHeight),
        child: Container(
          width: bubbleWidth,
          height: Dimensions.notificationBubbleHeight,
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
