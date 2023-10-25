import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class SelectChip {
  final String chipName;
  final String textId;

  SelectChip({
    required this.chipName,
    required this.textId,
  });
}

class CreateMultiSelectChips extends StatefulWidget {
  final List<SelectChip> chips;
  final int? maxSelection;
  final Function(List<SelectChip>)? onSelectedChipsChanged;
  final List<SelectChip> initialSelection;

  const CreateMultiSelectChips({
    super.key,
    required this.chips,
    this.maxSelection,
    this.onSelectedChipsChanged,
    this.initialSelection = const [],
  });

  @override
  State<CreateMultiSelectChips> createState() => _CreateMultiSelectChipsState();
}

class _CreateMultiSelectChipsState extends State<CreateMultiSelectChips> {
  final Set<int> _childIsSelected = {};

  @override
  void initState() {
    super.initState();
    // Initialize with preselected values
    for (int i = 0; i < widget.chips.length; i++) {
      if (widget.initialSelection
          .any((e) => e.textId == widget.chips[i].textId)) {
        _childIsSelected.add(i);
      }
    }
  }

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

    for (int i = 0; i < widget.chips.length; i++) {
      final bool isSelected = _childIsSelected.contains(i);
      var chip = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.paddingExtraSmall,
        ),
        child: FilterChipWidget(
          id: i,
          selected: isSelected,
          chipName: widget.chips[i].chipName,
          textId: widget.chips[i].textId,
          icon: isSelected ? Icons.check_box_outlined : null,
          onSelectionChanged: handleChildSelection,
        ),
      );
      chipListWithPadding.add(chip);
    }

    return Wrap(
      alignment: WrapAlignment.center,
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

  const FilterChipWidget({
    super.key,
    required this.id,
    required this.textId,
    required this.chipName,
    this.icon,
    this.selected = false,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return FilterChip(
      avatar: icon != null
          ? Icon(
              icon!,
              color: selected
                  ? theme.colorScheme.onSecondaryContainer
                  : theme.colorScheme.onSurfaceVariant,
            )
          : null,
      label: Text(chipName),
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: selected
            ? theme.colorScheme.onSecondaryContainer
            : theme.colorScheme.onSurfaceVariant,
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
