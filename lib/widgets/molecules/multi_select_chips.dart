import 'package:flutter/material.dart';

//class chip
class Chip {
  final String chipName;
  final IconData? icon;

  const Chip({
    required this.chipName,
    this.icon,
  });
}

//example
CreateMultiSelectChips createMultiSelectChipsExample() {
  return const CreateMultiSelectChips(
    chips: [
      Chip(chipName: 'Weekly check-ins'),
      Chip(chipName: 'Monthly check-ins'),
      Chip(chipName: 'One-off sessions'),
      Chip(chipName: 'Informal chats'),
      Chip(chipName: 'Formal meetings'),
      Chip(chipName: 'Long term'),
    ],
  );
}

//example 2
CreateMultiSelectChips createMultiSelectChipsExampleWithIcon() {
  return const CreateMultiSelectChips(
    chips: [
      Chip(chipName: 'Administrative Services', icon: Icons.campaign_outlined),
      Chip(chipName: 'Agriculture & Forestry', icon: Icons.campaign_outlined),
      Chip(
          chipName: 'Architecture & Engineering',
          icon: Icons.campaign_outlined),
      Chip(
          chipName: 'Arts, Entertainment, & Recreation',
          icon: Icons.campaign_outlined),
      Chip(
          chipName: 'Beauty, Hair, & Cosmetics', icon: Icons.campaign_outlined),
      Chip(
          chipName: 'Building & Grounds Maintenance',
          icon: Icons.campaign_outlined),
    ],
    maxSelection: 3,
  );
}

//build
class CreateMultiSelectChips extends StatelessWidget {
  final List<Chip> chips;
  final int? maxSelection;
  const CreateMultiSelectChips({
    Key? key,
    required this.chips,
    this.maxSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    String textString = maxSelection != null
        ? "Select up to $maxSelection (optional)"
        : "Select all that apply (optional)";

    return Column(
      children: [
        Center(
          child: Text(
            textString,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            for (int i = 0; i < chips.length; i++)
              FilterChipWidget(chipName: chips[i].chipName, icon: chips[i].icon)
          ],
        ),
      ],
    );
  }
}

class FilterChipWidget extends StatefulWidget {
  final String chipName;
  final IconData? icon;

  const FilterChipWidget({
    Key? key,
    required this.chipName,
    this.icon,
  }) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return FilterChip(
      avatar: widget.icon != null
          ? Icon(
              widget.icon!,
              color: _isSelected
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onSecondaryContainer,
            )
          : null,
      label: Text(widget.chipName),
      labelStyle: theme.textTheme.labelSmall?.copyWith(
        color: _isSelected
            ? theme.colorScheme.onPrimary
            : theme.colorScheme.onSecondaryContainer,
      ),
      backgroundColor: theme.colorScheme.secondaryContainer,
      selectedColor: theme.colorScheme.primary,
      selected: _isSelected,
      side: BorderSide.none,
      showCheckmark: false,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
    );
  }
}
