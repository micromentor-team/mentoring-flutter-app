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

//example 1
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
class CreateMultiSelectChips extends StatefulWidget {
  final List<Chip> chips;
  final int? maxSelection;

  const CreateMultiSelectChips({
    Key? key,
    required this.chips,
    this.maxSelection,
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
  }

  //Helper2: input the list of all chips and returns a list of selected chips
  List<FilterChipWidget> findSelectedChips(List<FilterChipWidget> allChips) {
    List<FilterChipWidget> selectedChip = [];
    for (var chip in allChips) {
      if (chip.selected == true) {
        selectedChip.add(chip);
      }
    }
    return selectedChip;
  }

  //Helper2: input a list of selected chips, return a list of selected chips' names
  List<String?> returnSelectedChipNames(List<FilterChipWidget> selectedChips) {
    List<String> names = [];
    for (var chip in selectedChips) {
      if (chip.selected == true) {
        names.add(chip.chipName);
      }
    }
    return names;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    String textString = widget.maxSelection != null
        ? l10n.profileChipsSelectUpTo(widget.maxSelection!)
        : l10n.profileChipsSelectAllThatApply;

    List<Widget> chipListWithPadding = [];
    List<FilterChipWidget> chipList = [];
    for (int i = 0; i < widget.chips.length; i++) {
      var chip = FilterChipWidget(
        id: i,
        selected: _childIsSelected.contains(i),
        chipName: widget.chips[i].chipName,
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

    //Example of how to use the 2 helper functions in the build method:
    // var selectedChips = findSelectedChips(chipList);
    // var names = returnSelectedChipNames(selectedChips);
    // print(names);

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
      ],
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final int id;
  final String chipName;
  final IconData? icon;
  final bool selected;
  final Function(int chipId) onSelectionChanged;

  const FilterChipWidget(
      {Key? key,
      required this.id,
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
