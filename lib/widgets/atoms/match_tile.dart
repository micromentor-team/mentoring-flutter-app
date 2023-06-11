import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/constants.dart';
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
          vertical: Insets.widgetSmallInset / 2),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Insets.widgetMediumInset, Insets.widgetSmallInset, 0, 0),
              child: Text(
                header,
                style: Styles.cardTitle,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: Corners.avatarRadiusSmall,
                backgroundImage:
                    avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                backgroundColor: Palette.kEmptyElement,
              ),
              title: Text(
                userName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              titleTextStyle: Styles.cardTitle,
              subtitle: Text(
                userLocation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitleTextStyle: Styles.mentorCardSubtitle,
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
