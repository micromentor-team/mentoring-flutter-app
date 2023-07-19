import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/notification_bubble.dart';

class InboxListTile extends StatelessWidget {
  final String? avatarUrl;
  final String fullName;
  final DateTime date;
  final String? message;
  final int notifications;
  final bool highlightMessage;
  final bool simplifyDate;
  final String? datePrefix;

  const InboxListTile({
    super.key,
    this.avatarUrl,
    required this.fullName,
    required this.date,
    this.message,
    this.notifications = 0,
    this.highlightMessage = false,
    this.simplifyDate = false,
    this.datePrefix,
  });

  String _getDate(BuildContext context) {
    if (!simplifyDate) {
      return AppUtility.timestampDateFormat(context, date);
    } else if (datePrefix == null) {
      return AppUtility.simplePastDateFormat(
        context,
        date,
        capitalize: true,
      );
    } else {
      return '$datePrefix ${AppUtility.simplePastDateFormat(
        context,
        date,
        capitalize: false,
      )}';
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.widgetSmallInset,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: Insets.widgetSmallInset,
                        start: Insets.widgetSmallInset),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        Radii.roundedRectRadius,
                      ),
                      child: Image(
                        image: avatarUrl != null
                            ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                            : const AssetImage(Assets.blankAvatar),
                        width: Dimensions.avatarRoundedRectLength,
                        height: Dimensions
                            .avatarRoundedRectLength, // Height of the avatar
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (notifications > 0)
                    NotificationBubble(
                      notifications: notifications,
                    ),
                ],
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: Insets.widgetSmallestInset,
                  ),
                  child: Text(
                    fullName,
                    maxLines: 1,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: Insets.widgetSmallestInset,
                ),
                child: Text(
                  _getDate(context),
                  maxLines: 1,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              )
            ],
          ),
          const SizedBox(
            height: Insets.widgetSmallInset,
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.widgetSmallInset,
              ),
              child: Text(
                message!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: highlightMessage
                    ? theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.primary,
                      )
                    : theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
              ),
            ),
        ],
      ),
    );
  }
}
