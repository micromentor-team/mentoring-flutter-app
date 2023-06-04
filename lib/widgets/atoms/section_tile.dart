import 'package:flutter/material.dart';

class SectionTile extends StatefulWidget {
  final String? title;

  const SectionTile({Key? key, this.title}): super(key: key);

  @override
  State<SectionTile> createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        title: widget.title != null ? Text(widget.title.toString()) : null,
        subtitle: const SizedBox(
          width: double.infinity,
          height: 80.0,
          child: Placeholder(color: Colors.grey),
        ),
      ),
    );
  }
}
