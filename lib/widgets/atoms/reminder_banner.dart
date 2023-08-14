import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../providers/user_provider.dart';

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
    final ThemeData theme = Theme.of(context);
    return Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(titleText,
                style: theme.textTheme.titleSmall,
                textAlign: TextAlign.start,
                softWrap: true),
            const SizedBox(height: Insets.paddingExtraSmall),
            Text(subtitleText,
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.start,
                softWrap: true),
          ],
        ));
  }

  Widget _buildImageAndButtonColumn(context) {
    final ThemeData theme = Theme.of(context);
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
              child: Image(
            image: AssetImage(Assets.reminderBannerStockImage),
            height: 80.0,
          )),
          InkWell(
            onTap: () => {debugPrint("hi")},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_forward),
                Text(
                  ctaText,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.paddingMedium,
        vertical: Insets.paddingExtraSmall,
      ),
      child: Card(
        surfaceTintColor: Theme.of(context).colorScheme.inverseSurface,
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingMedium),
          child: Row(
            children: <Widget>[
              _buildTextColumn(context),
              _buildImageAndButtonColumn(context)
            ],
          ),
        ),
      ),
    );
  }
}

class MaybeReminderBanner extends StatelessWidget {
  final AuthenticatedUser authenticatedUser;
  const MaybeReminderBanner({
    Key? key,
    required this.authenticatedUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    int profileCompletionPercentage =
        authenticatedUser.profileCompletionPercentage;
    DateTime? updatedAt = authenticatedUser.updatedAt;
    if (profileCompletionPercentage < 50) {
      return ReminderBanner(
        titleText: l10n
            .reminderBannerProfileCompleteTitle(profileCompletionPercentage),
        subtitleText: l10n.reminderBannerProfileCompleteSubtitle,
        ctaText: l10n.reminderBannerProfileCompleteCta,
      );
    } else if (updatedAt != null &&
        DateTime.now().difference(updatedAt).inDays > 30 * 6) {
      return ReminderBanner(
          titleText: l10n.reminderBannerProfileUpdateTitle,
          subtitleText: l10n.reminderBannerProfileUpdateSubtitle,
          ctaText: l10n.reminderBannerProfileUpdateCta);
    } else {
      return const SizedBox(width: 0.0, height: 0.0);
    }
  }
}
