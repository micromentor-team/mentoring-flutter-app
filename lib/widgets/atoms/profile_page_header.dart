import 'package:flutter/material.dart';

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
    String placeholderImage =
        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png';

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(24.0, 12.0, 0, 0),
                    child: Text(
                      profileMessage,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      softWrap: true,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 0),
                    child: Text(
                      userLocation,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 20.0,
                        overflow: TextOverflow.ellipsis,
                      ),
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
