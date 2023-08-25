import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class EmptyStateMessage extends StatelessWidget {
  final String? text;
  final IconData? icon;

  const EmptyStateMessage({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 96.0,
              color: theme.disabledColor.withOpacity(0.38),
            ),
          if (text != null)
            Padding(
              padding: const EdgeInsets.only(top: Insets.paddingMedium),
              child: Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 6,
                    child: Text(
                      text!,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: theme.disabledColor.withOpacity(0.38),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
