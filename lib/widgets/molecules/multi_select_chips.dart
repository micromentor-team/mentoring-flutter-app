import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//class chip
class Chip {
  final String chipName;
  final String textId;
  final IconData? icon;

  Chip({
    required this.chipName,
    required this.textId,
    this.icon,
  });
}

//example 1
CreateMultiSelectChips createMultiSelectChipsExample() {
  return CreateMultiSelectChips(
    chips: [
      Chip(chipName: 'Weekly check-ins', textId: 'weeklyCheckIn'),
      Chip(chipName: 'Monthly check-ins', textId: 'monthlyCheckIn'),
      Chip(chipName: 'One-off sessions', textId: 'oneOffSessions'),
      Chip(chipName: 'Informal chats', textId: 'informalChats'),
      Chip(chipName: 'Formal meetings', textId: 'formatMeetings'),
      Chip(chipName: 'Long term', textId: 'longTerm'),
    ],
  );
}

//example 2
CreateMultiSelectChips createMultiSelectChipsExampleWithIcon() {
  return CreateMultiSelectChips(
    chips: [
      Chip(
          chipName: 'Administrative Services',
          textId: 'administrativeServices',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Agriculture & Forestry',
          textId: 'agricultureAndForestry',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Architecture & Engineering',
          textId: 'architectureAndEngineering',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Arts, Entertainment, & Recreation',
          textId: 'artsEntertainmentAndRecreation',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Beauty, Hair, & Cosmetics',
          textId: 'beautyHairAndCosmetics',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Building & Grounds Maintenance',
          textId: 'buildingAndGroundsMaintenance',
          icon: Icons.work_outline),
    ],
    maxSelection: 3,
  );
}

//example 3:
CreateMultiSelectChips createHelpExampleWithIcon() {
  return CreateMultiSelectChips(
    chips: [
      Chip(
          chipName: 'Accounting & Finance',
          textId: 'accountingAndFinance',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Advertising & Promotion',
          textId: 'advertisingAndPromotion',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Branding & Identity',
          textId: 'brandingAndIdentity',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Business Development',
          textId: 'businessDevelopment',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Business Planning',
          textId: 'businessPlanning',
          icon: Icons.work_outline),
      Chip(
          chipName: 'E-Commerce',
          textId: 'eCommerce',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Financial Planning',
          textId: 'financialPlanning',
          icon: Icons.work_outline),
    ],
    maxSelection: 3,
  );
}

//example 4:
CreateMultiSelectChips createMultiSelectChipsIndustry() {
  return CreateMultiSelectChips(
    chips: [
      Chip(
          chipName: 'Administrative Services',
          textId: 'administrativeServices',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Agriculture & Forestry',
          textId: 'agricultureAndForestry',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Architecture & Engineering',
          textId: 'architectureAndEngineering',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Arts, Entertainment, & Recreation',
          textId: 'artsEntertainmentAndRecreation',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Beauty, Hair, & Cosmetics',
          textId: 'beautyHairAndCosmetics',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Building & Grounds Maintenance',
          textId: 'buildingAndGroundsMaintenance',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Construction',
          textId: 'construction',
          icon: Icons.work_outline),
      Chip(
          chipName: 'Digital Marketing & eCommerce',
          textId: 'digitalMarketingAndeCommerce',
          icon: Icons.work_outline),
    ],
    maxSelection: 1,
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

  //Helper2: input a list of selected chips, return a list of selected chips' text IDs
  List<String?> returnSelectedChipNames(List<FilterChipWidget> selectedChips) {
    List<String> textIds = [];
    for (var chip in selectedChips) {
      if (chip.selected == true) {
        textIds.add(chip.textId);
      }
    }
    return textIds;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    String textString = widget.maxSelection != null
        ? widget.maxSelection == 1
            ? l10n.profileChipSelectOne
            : l10n.profileChipsSelectUpTo(widget.maxSelection!)
        : l10n.profileChipsSelectAllThatApply;

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

    // Example of how to use the 2 helper functions in the build method:
    // var selectedChips = findSelectedChips(chipList);
    // var textIds = returnSelectedChipNames(selectedChips);
    // print(textIds);

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
