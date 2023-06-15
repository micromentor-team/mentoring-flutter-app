import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ProfileHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;
  final double? profileCompletionPercentage;

  const ProfileHeader({
    Key? key,
    this.avatarUrl,
    required this.profileMessage,
    this.profileCompletionPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.widgetLargeInset),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              if (profileCompletionPercentage != null)
                SizedBox(
                  width: Radii.avatarRadiusLarge * 2,
                  height: Radii.avatarRadiusLarge * 2,
                  child: CircularProgressIndicator(
                    value: profileCompletionPercentage,
                  ),
                ),
              CircleAvatar(
                radius: Radii.avatarRadiusLarge,
                backgroundImage: avatarUrl != null
                    ? NetworkImage(avatarUrl.toString())
                    : null,
              ),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: Insets.widgetMediumLargeInset,
              ),
              child: Text(
                profileMessage,
                textAlign: TextAlign.start,
                maxLines: 3,
                softWrap: true,
                style: TextStyles.profileHeader(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
