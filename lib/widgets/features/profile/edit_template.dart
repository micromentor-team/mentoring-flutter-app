import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:go_router/go_router.dart';

class EditTemplate extends StatelessWidget {
  final String title;
  final Widget body;

  const EditTemplate({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final modifiedColor = HSLColor.fromColor(theme.colorScheme.secondary)
        .withLightness(0.98)
        .toColor();

    return Column(
      children: [
        const SizedBox(height: Insets.paddingMedium),
        AppBar(
          backgroundColor: modifiedColor,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: theme.colorScheme.primary,
            ),
            onPressed: () => context.pop(),
          ),
          title: Text(
            title,
            softWrap: true,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Insets.paddingExtraLarge),
          child: Expanded(
            child: SingleChildScrollView(
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}
