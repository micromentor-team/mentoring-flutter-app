import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  final Widget? content;

  const ItemTile({Key? key, this.title, this.imageUrl, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
        backgroundColor: Colors.grey,
      ),
      title: title != null ? Text(title!) : null,
      subtitle: content,
    );
  }
}
