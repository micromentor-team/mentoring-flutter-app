import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../data/models/user/user_provider.dart';

class ReminderBanner extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String ctaText;

  const ReminderBanner(
      {Key? key,
      required this.titleText,
      required this.subtitleText,
      required this.ctaText})
      : super(key: key);

  Widget _buildTextColumn(context) {
    return Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(titleText,
                style: TextStyles.cardTitle(context),
                textAlign: TextAlign.start,
                softWrap: true),
            const SizedBox(height: Insets.widgetSmallestInset),
            Text(subtitleText,
                style: TextStyles.cardSubtitle(context),
                textAlign: TextAlign.start,
                softWrap: true),
          ],
        ));
  }

  Widget _buildImageAndButtonColumn(context) {
    return Expanded(
        flex: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
                child: Image(
              image: AssetImage(Assets.reminderBannerStockImage),
              height: Dimensions.reminderBannerImageHeight,
            )),
            InkWell(
                onTap: () => {debugPrint("hi")},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Icon(Icons.arrow_forward),
                  Text(ctaText, style: TextStyles.cardTitle(context)),
                ]))
          ],
        ));
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
                padding: const EdgeInsets.all(Insets.widgetMediumInset),
                child: Row(children: <Widget>[
                  _buildTextColumn(context),
                  _buildImageAndButtonColumn(context)
                ]))));
  }
}

class MaybeReminderBanner extends StatelessWidget {
  const MaybeReminderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return userProvider.queryUserProfileInfo(onLoading: () {
      return const SizedBox(width: 0.0, height: 0.0);
    }, onError: (error, {refetch}) {
      debugPrint(error);
      return const SizedBox(width: 0.0, height: 0.0);
    }, onData: (data, {refetch, fetchMore}) {
      int profileCompletionPercentage = data.model!.profileCompletionPercentage;
      DateTime lastUpdateTime = data.model!.lastUpdateTime;
      if (profileCompletionPercentage < 50) {
        return ReminderBanner(
          titleText: l10n
              .reminderBannerProfileCompleteTitle(profileCompletionPercentage),
          subtitleText: l10n.reminderBannerProfileCompleteSubtitle,
          ctaText: l10n.reminderBannerProfileCompleteCta,
        );
      } else if (DateTime.now().difference(lastUpdateTime).inDays > 30 * 6) {
        return ReminderBanner(
            titleText: l10n.reminderBannerProfileUpdateTitle,
            subtitleText: l10n.reminderBannerProfileUpdateSubtitle,
            ctaText: l10n.reminderBannerProfileUpdateCta);
      } else {
        return const SizedBox(width: 0.0, height: 0.0);
      }
    });
  }
}
