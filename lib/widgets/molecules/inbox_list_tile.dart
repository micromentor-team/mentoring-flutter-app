import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/notification_bubble.dart';

class InboxListTile extends StatelessWidget {
  final String? avatarUrl;
  final String fullName;
  final DateTime date;
  final String message;
  final int notifications;
  final bool highlightTile;
  final bool simplifyDate;
  final String? datePrefix;
  final void Function() onPressed;

  const InboxListTile({
    super.key,
    this.avatarUrl,
    required this.fullName,
    required this.date,
    required this.message,
    this.notifications = 0,
    this.highlightTile = false,
    this.simplifyDate = false,
    this.datePrefix,
    required this.onPressed,
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
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Insets.paddingSmall,
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
                        top: Insets.paddingSmall,
                        start: Insets.paddingSmall,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          Radii.roundedRectRadiusMedium,
                        ),
                        child: Image(
                          image: avatarUrl != null
                              ? NetworkImage(avatarUrl!)
                                  as ImageProvider<Object>
                              : const AssetImage(Assets.blankAvatar),
                          width: 28.0,
                          height: 28.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (notifications > 0)
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: NotificationBubble(
                          notifications: notifications,
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  width: Insets.paddingSmall,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: Insets.paddingExtraSmall,
                    ),
                    child: Text(
                      fullName,
                      maxLines: 1,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: highlightTile
                            ? theme.colorScheme.onPrimaryContainer
                            : theme.hintColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(
                  width: Insets.paddingSmall,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: Insets.paddingExtraSmall,
                  ),
                  child: Text(
                    _getDate(context),
                    maxLines: 1,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.secondary.withOpacity(0.70),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: Insets.paddingSmall,
                )
              ],
            ),
            const SizedBox(
              height: Insets.paddingSmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.paddingSmall,
              ),
              child: Text(
                message,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: highlightTile
                    ? theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onBackground,
                      )
                    : theme.textTheme.bodyMedium?.copyWith(
                        color: theme.hintColor,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
