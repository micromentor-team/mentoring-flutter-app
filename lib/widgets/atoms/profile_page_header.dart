import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ProfilePageHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;
  final String userLocation;

  const ProfilePageHeader(
      {Key? key,
      this.avatarUrl,
      required this.profileMessage,
      required this.userLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.widgetLargeInset),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage:
                  avatarUrl != null ? NetworkImage(avatarUrl.toString()) : null,
              backgroundColor: Colors.grey,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.widgetSmallInset),
                    child: Text(
                      profileMessage,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      softWrap: true,
                      style: TextStyles.profileHeader(context),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.widgetSmallInset),
                    child: Text(
                      userLocation,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      softWrap: true,
                      style: TextStyles.profileHeader(context),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
