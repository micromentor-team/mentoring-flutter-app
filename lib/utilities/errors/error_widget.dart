import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Icon(
        Icons.error,
        size: Dimensions.minimumInteractionWidgetLength,
        color: theme.colorScheme.error,
      ),
    );
  }
}
