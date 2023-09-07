import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constants/app_constants.dart';

///////////////////////This is multiple cards///////////////////////////////////

//////Example1////////
LoginRadioButtonCards createEntrepreneurMentorCard(context) {
  var cards = [
    createEntrepreneurCard(context),
    createMentorCard(context),
  ];
  return LoginRadioButtonCards(cards: cards);
}

//////Implementation////////
class LoginRadioButtonCards extends StatefulWidget {
  final List<LoginRadioButtonCard> cards;
  const LoginRadioButtonCards({
    required this.cards,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginRadioButtonCards> createState() => _LoginRadioButtonCardsState();
}

class _LoginRadioButtonCardsState extends State<LoginRadioButtonCards> {
  @override
  Widget build(BuildContext context) {
    List<Widget> cardWidgets = [];
    for (int i = 0; i < widget.cards.length; i++) {
      cardWidgets.add(widget.cards[i]);
      cardWidgets.add(const SizedBox(height: Insets.paddingMedium));
    }
    return Column(
      children: cardWidgets,
    );
  }
}
///////////////////////This is a single card///////////////////////////////////

//////Example1////////
LoginRadioButtonCard createEntrepreneurCard(BuildContext context) {
  final AppLocalizations l10n = AppLocalizations.of(context)!;

  return LoginRadioButtonCard(
    title: l10n.iAmAnEntrepreneur,
    subtitle: l10n.entrepreneurDescription,
    imageAssetName: const Image(image: AssetImage(Assets.entrepreneurIcon)),
    selected: true,
  );
}

//////Example2////////
LoginRadioButtonCard createMentorCard(BuildContext context) {
  final AppLocalizations l10n = AppLocalizations.of(context)!;

  return LoginRadioButtonCard(
    title: l10n.iAmAMentor,
    subtitle: l10n.mentorDescription,
    imageAssetName: const Image(image: AssetImage(Assets.mentorIcon)),
    selected: false,
  );
}

//////Example3////////
LoginRadioButtonCard createLoginRadioButtonCardWithIconExample(
    BuildContext context) {
  // final AppLocalizations l10n = AppLocalizations.of(context)!;

  return const LoginRadioButtonCard(
    title: "Idea stage",
    subtitle:
        "I do not yet have a working prototype or customers and am not operational.",
    titleIcon: Icon(Icons.lightbulb_outlined),
    selected: true,
  );
}

//////Implementation////////
class LoginRadioButtonCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final Image? imageAssetName;
  final Icon? titleIcon;
  final bool selected;

  const LoginRadioButtonCard({
    required this.title,
    required this.subtitle,
    required this.selected,
    this.imageAssetName,
    this.titleIcon,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginRadioButtonCard> createState() => _LoginRadioButtonCardState();
}

class _LoginRadioButtonCardState extends State<LoginRadioButtonCard> {
  UserRole? _character = UserRole.selected;
  Color _colorOne = const Color(0xFFD0BCFF);
  Color _colorTwo = const Color(0xFFE8DEF8);
  UserRole radioValue = UserRole.selected;

  @override
  Widget build(BuildContext context) {
    if (widget.selected == true) {
      radioValue = UserRole.selected;
      _colorOne = const Color(0xFFD0BCFF);
    } else {
      radioValue = UserRole.unselected;
      _colorOne = const Color(0xFFE8DEF8);
    }

    final ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: _colorOne,
        borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.paddingSmall),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Radio<UserRole>(
                value: radioValue,
                groupValue: _character,
                onChanged: (UserRole? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            if (widget.imageAssetName != null)
              SizedBox(
                width: 64,
                height: 104,
                child: widget.imageAssetName,
              ),
            if (widget.imageAssetName != null) const SizedBox(width: 16),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Insets.paddingSmall, bottom: Insets.paddingSmall),
                    child: Row(
                      children: [
                        //the code snippet below checks if the titleIcon is null, and if it is not null, presents it
                        if (widget.titleIcon != null) widget.titleIcon!,
                        Text(
                          widget.title,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum UserRole { unselected, selected }
