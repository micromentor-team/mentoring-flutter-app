import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Icon(
        Icons.error,
        size: 48.0,
        color: theme.colorScheme.error,
      ),
    );
  }
}
