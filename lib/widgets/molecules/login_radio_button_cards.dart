import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constants/app_constants.dart';

///////////////////////This is multiple cards///////////////////////////////////

//////Example1////////
// LoginRadioButtonCards createEntrepreneurMentorCards(BuildContext context) {
//   final AppLocalizations l10n = AppLocalizations.of(context)!;
//
//   return LoginRadioButtonCards(
//     title: [l10n.iAmAnEntrepreneur, l10n.iAmAMentor],
//     subtitle: [l10n.entrepreneurDescription, l10n.mentorDescription],
//     imageAssetName: const [
//       Image(image: AssetImage(Assets.entrepreneurIcon)),
//       Image(image: AssetImage(Assets.mentorIcon))
//     ],
//     titleIcon: const [null, null],
//   );
// }

//////Example2////////
// LoginRadioButtonCards createBusinessStageCards(BuildContext context) {
//   // final AppLocalizations l10n = AppLocalizations.of(context)!;
//
//   return LoginRadioButtonCards(
//     title: [
//       "Idea stage",
//       "Operational",
//       "Revenue earning",
//       "Profitable and Scaling"
//     ],
//     subtitle: [
//       "I do not yet have a working prototype or customers and am not operational.",
//       "I have a product or service offering but I have not yet earned revenue. ",
//       "I am earning revenue but I am not yet profitable",
//       "I am making a profit and am ready to grow my business"
//     ],
//     titleIcon: [
//       Icon(Icons.lightbulb_outlined),
//       Icon(Icons.storefront_outlined),
//       Icon(Icons.attach_money_outlined),
//       Icon(Icons.auto_graph_outlined)
//     ],
//     imageAssetName: [null, null, null, null],
//   );
// }

//////Implementation////////
class LoginRadioButtonCards extends StatefulWidget {
  final List<String> title;
  final List<String> subtitle;
  final List<Image?> imageAssetName;
  final List<Icon?> titleIcon;
  final Function(int) rebuildParentWidget;
  int selectedNumber;

  LoginRadioButtonCards({
    required this.title,
    required this.subtitle,
    required this.imageAssetName,
    required this.titleIcon,
    required this.rebuildParentWidget,
    this.selectedNumber = 0,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginRadioButtonCards> createState() => _LoginRadioButtonCardsState();
}

class _LoginRadioButtonCardsState extends State<LoginRadioButtonCards> {
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
                        widget.selectedNumber = _character;
                        widget.rebuildParentWidget(_character);
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
