import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class SelectChip {
  final String chipName;
  final String textId;
  final IconData? icon;

  SelectChip({
    required this.chipName,
    required this.textId,
    this.icon,
  });
}

class CreateMultiSelectChips extends StatefulWidget {
  final List<SelectChip> chips;
  final int? maxSelection;
  final Function(List<SelectChip>)? onSelectedChipsChanged;

  const CreateMultiSelectChips({
    Key? key,
    required this.chips,
    this.maxSelection,
    this.onSelectedChipsChanged,
  }) : super(key: key);

  @override
  State<CreateMultiSelectChips> createState() => _CreateMultiSelectChipsState();
}

class _CreateMultiSelectChipsState extends State<CreateMultiSelectChips> {
  final Set<int> _childIsSelected = {};

  // Callback function to be called by the child widget when selected
  void handleChildSelection(int chipId) {
    setState(() {
      if (_childIsSelected.contains(chipId)) {
        _childIsSelected.remove(chipId);
      } else if (widget.maxSelection != null) {
        if (_childIsSelected.length < widget.maxSelection!) {
          _childIsSelected.add(chipId);
        }
      } else {
        _childIsSelected.add(chipId);
      }
    });
    if (widget.onSelectedChipsChanged != null) {
      widget.onSelectedChipsChanged!(
        _childIsSelected.map((i) => widget.chips[i]).toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> chipListWithPadding = [];
    List<FilterChipWidget> chipList = [];
    for (int i = 0; i < widget.chips.length; i++) {
      var chip = FilterChipWidget(
        id: i,
        selected: _childIsSelected.contains(i),
        chipName: widget.chips[i].chipName,
        textId: widget.chips[i].textId,
        icon: widget.chips[i].icon,
        onSelectionChanged: handleChildSelection,
      );
      chipList.add(chip);
      chipListWithPadding.add(chip);
      var padding = const SizedBox(
        height: Insets.paddingMedium,
      );
      chipListWithPadding.add(padding);
    }

    return Column(
      children: chipListWithPadding,
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final int id;
  final String chipName;
  final String textId;
  final IconData? icon;
  final bool selected;
  final Function(int chipId) onSelectionChanged;

  const FilterChipWidget(
      {Key? key,
      required this.id,
      required this.textId,
      required this.chipName,
      this.icon,
      this.selected = false,
      required this.onSelectionChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return FilterChip(
      avatar: icon != null
          ? Icon(
              icon!,
              color: selected
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.onSecondaryContainer,
            )
          : null,
      label: Text(chipName),
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: selected
            ? theme.colorScheme.onSurfaceVariant
            : theme.colorScheme.onSecondaryContainer,
      ),
      selectedColor: theme.colorScheme.secondaryContainer,
      selected: selected,
      side: selected == false
          ? BorderSide(color: theme.colorScheme.outline)
          : null,
      showCheckmark: false,
      onSelected: (bool selected) {
        onSelectionChanged(id);
      },
    );
  }
}
