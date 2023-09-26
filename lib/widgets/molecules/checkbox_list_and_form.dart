import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class CheckboxListAndForm extends StatelessWidget {
  const CheckboxListAndForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.selectionOrder,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final int selectionOrder;
  final ValueChanged<bool> onChanged;

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

class PronounExample extends StatefulWidget {
  const PronounExample({Key? key}) : super(key: key);

  @override
  State<PronounExample> createState() => _PronounExampleState();
}

class _PronounExampleState extends State<PronounExample> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  int _numPronounsSelect = 0;
  int _selectionorder1 = 0;
  int _selectionorder2 = 0;
  int _selectionorder3 = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledCheckbox(
          label: 'she/her',
          value: _isSelected1,
          selectionOrder: _selectionorder1,
          onChanged: (bool value) {
            setState(() {
              _isSelected1 = value;
              if (value == true) {
                _selectionorder1 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder1 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
        LabeledCheckbox(
          label: 'he/him',
          value: _isSelected2,
          selectionOrder: _selectionorder2,
          onChanged: (bool value) {
            setState(() {
              _isSelected2 = value;
              if (value == true) {
                _selectionorder2 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder2 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
        LabeledCheckbox(
          label: 'they/them',
          value: _isSelected3,
          selectionOrder: _selectionorder3,
          onChanged: (bool value) {
            setState(() {
              _isSelected3 = value;
              if (value == true) {
                _selectionorder3 = _numPronounsSelect + 1;
                _numPronounsSelect = _numPronounsSelect + 1;
              } else {
                _selectionorder3 = _numPronounsSelect - 1;
                _numPronounsSelect = _numPronounsSelect - 1;
              }
            });
          },
        ),
      ],
    );
  }
}
