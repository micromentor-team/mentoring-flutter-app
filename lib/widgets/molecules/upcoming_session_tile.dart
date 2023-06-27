import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class UpcomingSessionTile extends StatelessWidget {
  static const Duration joinMinimumTime = Duration(minutes: 5);
  final String avatarUrl;
  final DateTime dateTime;
  final String mentorName;

  const UpcomingSessionTile({
    Key? key,
    required this.avatarUrl,
    required this.dateTime,
    required this.mentorName,
  }) : super(key: key);

  // List<Widget> _createSessionButtons(AppLocalizations l10n) {
  //   List<Widget> buttons = [];
  //   // Add JOIN button only if session is coming up soon.
  //   if (DateTime.now().isAfter(dateTime.subtract(joinMinimumTime))) {
  //     buttons.add(Padding(
  //       padding: const EdgeInsets.only(
  //         right: Insets.widgetSmallInset,
  //       ),
  //       child: RectangleButton(
  //         onPressed: () => {},
  //         text: l10n.homeUpcomingSessionJoin,
  //       ),
  //     ));
  //   }
  //   buttons.add(RectangleButton(
  //     onPressed: () => {},
  //     text: l10n.homeUpcomingSessionReschedule,
  //   ));
  //   return buttons;
  // }

  @override
  Widget build(BuildContext context) {
    // TODO(m-rosario): Support different date formats according to locale.
    DateFormat dateFormat = DateFormat('MMMM d\ny\n').add_jm();
    return Padding(
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.widgetSmallInset,
            horizontal: Insets.widgetMediumInset,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: Dimensions.upcomingSessionTile.width,
              height: Dimensions.upcomingSessionTile.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: CircleAvatar(
                          radius: Radii.avatarRadiusSmall,
                          child: CircleAvatar(
                            radius: Radii.avatarRadiusSmall,
                            backgroundImage: NetworkImage(avatarUrl.toString()),
                          ))),
                  Text(
                    mentorName,
                    style: TextStyles.mentorCardTitle(context),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Insets.widgetSmallestInset,
                        bottom: Insets.widgetSmallInset),
                    child: Text(
                      dateFormat.format(dateTime),
                      style: TextStyles.mentorCardSubtitle(context),
                      textAlign: TextAlign.center,
                    ),
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
