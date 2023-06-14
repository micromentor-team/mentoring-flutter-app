import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/rectangle_button.dart';

class MatchTile extends StatelessWidget {
  final String header;
  final String userName;
  final String userLocation;
  final String? avatarUrl;
  final String buttonText;
  final void Function() buttonOnPressed;

  const MatchTile({
    Key? key,
    required this.header,
    required this.userName,
    required this.userLocation,
    this.avatarUrl,
    required this.buttonText,
    required this.buttonOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.widgetMediumInset,
        vertical: Insets.widgetSmallestInset,
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.widgetMediumInset,
                top: Insets.widgetSmallInset,
              ),
              child: Text(
                header,
                style: TextStyles.cardTitle(context),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: Radii.avatarRadiusSmall,
                backgroundImage:
                    avatarUrl != null ? NetworkImage(avatarUrl!) : null,
              ),
              title: Text(
                userName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              titleTextStyle: TextStyles.cardTitle(context),
              subtitle: Text(
                userLocation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitleTextStyle: TextStyles.mentorCardSubtitle(context),
              trailing: RectangleButton(
                onPressed: buttonOnPressed,
                text: buttonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
