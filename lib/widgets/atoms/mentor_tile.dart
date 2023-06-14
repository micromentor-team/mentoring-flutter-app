import 'package:flutter/material.dart';

class MentorTile extends StatelessWidget {
  final String? avatarUrl;

  const MentorTile({Key? key, this.avatarUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        child: SizedBox(
          height: 96,
          width: 112,
          child: avatarUrl != null
              ? Image.network(avatarUrl!)
              : const ColoredBox(color: Colors.grey),
        ),
      ),
    );
  }
}
