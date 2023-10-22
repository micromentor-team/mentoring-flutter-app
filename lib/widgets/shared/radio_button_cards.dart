import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class RadioButtonCards extends StatefulWidget {
  final List<String> title;
  final List<String> subtitle;
  final List<Image?> imageAssetName;
  final List<Icon?> titleIcon;
  final Function(int)? onSelectedCardChanged;

  const RadioButtonCards({
    required this.title,
    required this.subtitle,
    required this.imageAssetName,
    required this.titleIcon,
    this.onSelectedCardChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<RadioButtonCards> createState() => _RadioButtonCardsState();
}

class _RadioButtonCardsState extends State<RadioButtonCards> {
  int _character = 0;

  @override
  Column build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    List<Widget> cardWidgets = [];
    Color startingColor;

    for (int i = 0; i < widget.title.length; i++) {
      Color colorOne = Theme.of(context).colorScheme.inversePrimary;
      Color colorTwo = Theme.of(context).colorScheme.secondaryContainer;

      if (i == _character) {
        startingColor = colorOne;
      } else {
        startingColor = colorTwo;
      }

      cardWidgets.add(
        Container(
          decoration: BoxDecoration(
            color: startingColor,
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.paddingSmall),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Radio<int>(
                    value: i,
                    groupValue: _character,
                    onChanged: (int? value) {
                      setState(() {
                        _character = value!;
                        if (widget.onSelectedCardChanged != null) {
                          widget.onSelectedCardChanged!(_character);
                        }
                      });
                    },
                  ),
                ),
                if (widget.imageAssetName[i] != null)
                  SizedBox(
                    width: 64,
                    height: 104,
                    child: widget.imageAssetName[i],
                  ),
                if (widget.imageAssetName[i] != null) const SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: Insets.paddingSmall,
                            bottom: Insets.paddingSmall),
                        child: Row(
                          children: [
                            //the code snippet below checks if the titleIcon is null, and if it is not null, presents it
                            if (widget.titleIcon[i] != null)
                              widget.titleIcon[i]!,
                            if (widget.titleIcon[i] != null)
                              const SizedBox(
                                width: Insets.paddingExtraSmall,
                              ),
                            Text(
                              widget.title[i],
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        widget.subtitle[i],
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
      cardWidgets.add(const SizedBox(height: Insets.paddingMedium));
    }
    return Column(
      children: cardWidgets,
    );
  }
}
