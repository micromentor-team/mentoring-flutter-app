import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/rectangle_button.dart';

class UpcomingSessionTile extends StatelessWidget {
  static const Duration joinMinimumTime = Duration(minutes: 5);
  final DateTime dateTime;
  final String mentorName;

  const UpcomingSessionTile({
    Key? key,
    required this.dateTime,
    required this.mentorName,
  }) : super(key: key);

  List<Widget> _createSessionButtons(AppLocalizations l10n) {
    List<Widget> buttons = [];
    // Add JOIN button only if session is coming up soon.
    if (DateTime.now().isAfter(dateTime.subtract(joinMinimumTime))) {
      buttons.add(Padding(
        padding: const EdgeInsets.only(
          right: Insets.widgetSmallInset,
        ),
        child: RectangleButton(
          onPressed: () => {},
          text: l10n.homeUpcomingSessionJoin,
        ),
      ));
    }
    buttons.add(RectangleButton(
      onPressed: () => {},
      text: l10n.homeUpcomingSessionReschedule,
    ));
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    // TODO(m-rosario): Support different date formats according to locale.
    DateFormat dateFormat = DateFormat('MMMM d, ').add_jm();
    return Padding(
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.widgetSmallInset,
            horizontal: Insets.widgetMediumInset,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: Dimensions.upcomingSessionTile.width,
              height: Dimensions.upcomingSessionTile.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mentorName,
                    style: TextStyles.cardTitle(context),
                  ),
                  const SizedBox(height: Insets.widgetSmallestInset),
                  Text(
                    dateFormat.format(dateTime),
                    style: TextStyles.cardSubtitle(context),
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    children: _createSessionButtons(l10n),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
