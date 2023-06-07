import 'package:flutter/material.dart';

import 'package:mm_flutter_app/themes/styles.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
              child: Text(
                header,
                style: Styles.cardTitle,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                backgroundColor: Colors.grey,
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
              subtitleTextStyle: Styles.cardSubtitle,
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
