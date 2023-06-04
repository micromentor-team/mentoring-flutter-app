import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;

  const ProfileHeader({Key? key, this.avatarUrl, required this.profileMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl.toString()) : null,
              backgroundColor: Colors.grey,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 0),
                child: Text(
                  profileMessage,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 24.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
