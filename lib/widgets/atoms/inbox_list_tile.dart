import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/notification_bubble.dart';

class InboxListTile extends StatelessWidget {
  final String? avatarUrl;
  final String fullName;
  final DateTime date;
  final String? message;
  final int notifications;

  const InboxListTile({
    super.key,
    this.avatarUrl,
    required this.fullName,
    required this.date,
    required this.message,
    this.notifications = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: Insets.widgetSmallInset,
      ),
      child: Column(
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
                    child: CircleAvatar(
                      radius: Radii.avatarRadiusSmallest,
                      backgroundImage: const AssetImage(Assets.blankAvatar),
                      foregroundImage:
                          avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                    ),
                  ),
                  if (notifications > 0)
                    NotificationBubble(
                      notifications: notifications,
                      containerLength: Radii.avatarRadiusSmallest * 2 +
                          Insets.widgetSmallInset,
                    ),
                ],
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              ),
              Expanded(
                child: Text(
                  fullName,
                  maxLines: 1,
                  style: TextStyles.quickViewProfileCardHighEmphasis(context),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              ),
              Text(
                DateFormat('MMMM d').add_jm().format(date),
                maxLines: 1,
                style: TextStyles.dateLowEmphasis(context),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                width: Insets.widgetSmallInset,
              )
            ],
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.widgetSmallInset,
                left: Insets.widgetSmallInset,
                right: Insets.widgetSmallInset,
              ),
              child: Text(
                message!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.textPreview(context),
              ),
            ),
        ],
      ),
    );
  }
}
