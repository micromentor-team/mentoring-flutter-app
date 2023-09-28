import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class LabeledCheckbox extends StatelessWidget {
  final String label;
  final String id;
  final bool value;
  final int selectionOrder;
  final ValueChanged<bool> onChanged;

  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.id,
    required this.value,
    required this.selectionOrder,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: Row(
          children: <Widget>[
            Text(
              label,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (value == true)
              const SizedBox(
                width: Insets.paddingSmall,
              ),
            if (value == true)
              Container(
                width: Insets.paddingMedium,
                height: Insets.paddingMedium,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: theme.colorScheme.secondary),
                child: Center(
                  child: Text(
                    selectionOrder.toString(),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.background,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            const Spacer(),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
