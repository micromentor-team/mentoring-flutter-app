import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  final String? title;
  final Widget? child;

  const SectionTile({Key? key, this.title, this.child}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        title: title != null ? Text(title!) : null,
        subtitle: child,
      ),
    );
  }
}
