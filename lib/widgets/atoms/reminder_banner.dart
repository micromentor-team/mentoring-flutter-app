import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ReminderBanner extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String ctaText;

  const ReminderBanner({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.ctaText
  }) : super(key: key);

  Widget _buildTextColumn(context){
    return Expanded(
      flex: 1,
      child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
              Text(
                titleText,
                style: TextStyles.cardTitle(context),
                textAlign: TextAlign.start,
                softWrap: true
              ),
              const SizedBox(height: Insets.widgetSmallestInset),
              Text(
                subtitleText,
                style: TextStyles.cardSubtitle(context),
                textAlign: TextAlign.start,
                softWrap: true
              ),
          ],
        )
      );
  }

  Widget _buildImageAndButtonColumn(context){
    return Expanded(
      flex: 1,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            const SizedBox(
                child : Image(
                image: AssetImage("assets/images/StockImage1.png"),
                height: Dimensions.reminderBannerImageHeight,
            )),
            InkWell(
            onTap:  () => {
              debugPrint("hi")
            },
            child: Row(children: [
                const Icon(Icons.arrow_forward),
                Text( ctaText, 
                style: TextStyles.cardTitle(context)),
              ]) 
            )
          ],
        )
      );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.widgetMediumInset,
        vertical: Insets.widgetSmallestInset,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
        horizontal: Insets.widgetMediumInset,
        vertical: Insets.widgetMediumInset),
        child: Row(
          children: <Widget> [
            _buildTextColumn(context),
            _buildImageAndButtonColumn(context)
          ]
        )
      )
      )
    );
  }
}



class MaybeReminderBanner extends StatelessWidget {
  final int profileCompletionPercentage;
  final DateTime lastUpdateTime;

  const MaybeReminderBanner({
    Key? key,
    required this.profileCompletionPercentage,
    required this.lastUpdateTime
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(DateTime.now().difference(lastUpdateTime).inDays);
    if(profileCompletionPercentage < 50){
      return ReminderBanner(
        titleText: "Profile $profileCompletionPercentage% complete",
        subtitleText: "Complete your profile for more mentor matches",
        ctaText: "Complete profile",
      );
    }else if(DateTime.now().difference(lastUpdateTime).inDays > 30*6){
      return const ReminderBanner(
        titleText: "Update your profile",
        subtitleText: "Make sure your profile is updated so you get the best matches",
        ctaText: "Update profile",
      );
    }else{
      return const SizedBox(width: 0.0, height: 0.0);
    }

  }

}