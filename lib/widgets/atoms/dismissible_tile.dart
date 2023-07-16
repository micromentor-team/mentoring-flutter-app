import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class DismissibleTile extends StatelessWidget {
  final String tileId;
  final Widget child;
  final void Function() onDismissed;
  final Icon? icon;

  const DismissibleTile({
    super.key,
    required this.tileId,
    required this.child,
    required this.onDismissed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Dismissible(
      key: Key(tileId),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) => onDismissed(),
      background: Container(
        color: theme.colorScheme.primaryContainer,
        alignment: AlignmentDirectional.centerEnd,
        child: icon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: Insets.widgetLargeInset,
                ),
                child: icon,
              )
            : null,
      ),
      child: child,
    );
  }
}
