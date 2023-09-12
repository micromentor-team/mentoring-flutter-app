import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//class chip
class Chip {
  final String chipName;
  final IconData? icon;

  Chip({
    required this.chipName,
    this.icon,
  });
}

//example
CreateMultiSelectChips createMultiSelectChipsExample() {
  return CreateMultiSelectChips(
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
  return CreateMultiSelectChips(
    chips: [
      Chip(chipName: 'Administrative Services', icon: Icons.work_outline),
      Chip(chipName: 'Agriculture & Forestry', icon: Icons.work_outline),
      Chip(chipName: 'Architecture & Engineering', icon: Icons.work_outline),
      Chip(
          chipName: 'Arts, Entertainment, & Recreation',
          icon: Icons.work_outline),
      Chip(chipName: 'Beauty, Hair, & Cosmetics', icon: Icons.work_outline),
      Chip(
          chipName: 'Building & Grounds Maintenance', icon: Icons.work_outline),
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
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    Set<FilterChipWidget> AllChips = {};

    String textString = maxSelection != null
        ? l10n.profileChipsSelectUpTo(maxSelection!)
        : l10n.profileChipsSelectAllThatApply;

    List<Widget> chipListWithPadding = [];
    for (int i = 0; i < chips.length; i++) {
      var chip = FilterChipWidget(
        chipName: chips[i].chipName,
        icon: chips[i].icon,
        callback: (Set<FilterChipWidget> val) {
          AllChips = val;
        },
      );
      chipListWithPadding.add(chip);
      var padding = const SizedBox(
        height: Insets.paddingMedium,
      );
      chipListWithPadding.add(padding);
    }
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
          height: Insets.paddingLarge,
        ),
        Column(
          children: chipListWithPadding,
        ),
        const Text("Selected widgets are: "),
        for (var chip in AllChips) Text(chip.chipName)
      ],
    );
  }
}

typedef FilterChipWidgetCallback = void Function(Set<FilterChipWidget> val);

class FilterChipWidget extends StatefulWidget {
  final String chipName;
  final IconData? icon;
  final FilterChipWidgetCallback callback;
  bool selected;

  FilterChipWidget({
    Key? key,
    required this.chipName,
    required this.callback,
    this.icon,
    this.selected = false,
  }) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // Set<FilterChipWidget> allFilterChips = {};
    // allFilterChips.add(widget);
    // print(allFilterChips.length);
    // widget.callback(allFilterChips);
    // allFilterChips.forEach((element) {
    //   if (element.selected) print(element.chipName);
    // });

    // Set<FilterChipWidget> selectedFilterChips = {};

    return FilterChip(
      avatar: widget.icon != null
          ? Icon(
              widget.icon!,
              color: _isSelected
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.onSecondaryContainer,
            )
          : null,
      label: Text(widget.chipName),
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: _isSelected
            ? theme.colorScheme.onSurfaceVariant
            : theme.colorScheme.onSecondaryContainer,
      ),
      selectedColor: theme.colorScheme.secondaryContainer,
      selected: _isSelected,
      side: _isSelected == false
          ? BorderSide(color: theme.colorScheme.outline)
          : null,
      showCheckmark: false,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
          widget.selected = selected;
        });
      },
    );
  }
}
