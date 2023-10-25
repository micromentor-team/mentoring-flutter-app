import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../../providers/user_provider.dart';

class ReminderBanner extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  final String ctaText;
  final int profileCompletionPercentage;

  const ReminderBanner({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.ctaText,
    required this.profileCompletionPercentage,
  });

  Widget _buildProgressCircleColumn(context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: Radii.avatarRadiusSmall * 2,
              height: Radii.avatarRadiusSmall * 2,
              child: CircularProgressIndicator(
                value: profileCompletionPercentage / 100,
              ),
            ),
            SizedBox(
              width: Radii.avatarRadiusSmall * 2,
              height: Radii.avatarRadiusSmall * 2,
              child: Center(
                child: Text(
                  l10n.homePercentageProfileCompletion(
                      profileCompletionPercentage),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildTextColumn(context) {
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);

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
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.paddingMedium),
              child: Text(subtitleText,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  textAlign: TextAlign.start,
                  softWrap: true),
            ),
            InkWell(
              onTap: () {
                router.push(Routes.profile.path);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ctaText,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: Insets.paddingSmall,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  @override
  State<ReminderBanner> createState() => _ReminderBannerState();
}

class _ReminderBannerState extends State<ReminderBanner> {
  bool showCard = true;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    if (showCard == false) {
      return const SizedBox();
    } else {
      return Padding(
        padding: const EdgeInsets.only(
          right: Insets.paddingMedium,
          left: Insets.paddingMedium,
          top: Insets.paddingMedium,
          bottom: 0,
        ),
        child: Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.onInverseSurface,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                Insets.paddingMedium,
                Insets.paddingSmall,
                Insets.paddingMedium,
                Insets.paddingMedium),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          showCard = false;
                        });
                      },
                      child: Icon(
                        Icons.close,
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    widget._buildProgressCircleColumn(context),
                    const SizedBox(width: Insets.paddingLarge),
                    widget._buildTextColumn(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}

class MaybeReminderBanner extends StatelessWidget {
  final AuthenticatedUser authenticatedUser;
  const MaybeReminderBanner({
    super.key,
    required this.authenticatedUser,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    int profileCompletionPercentage =
        authenticatedUser.profileCompletionPercentage;

    DateTime? updatedAt = authenticatedUser.updatedAt?.toLocal();
    if (profileCompletionPercentage < 50) {
      return ReminderBanner(
        titleText: l10n.homeReminderBannerProfileCompleteTitle,
        subtitleText: l10n.homeReminderBannerProfileCompleteSubtitle,
        ctaText: l10n.homeReminderBannerProfileCompletePrompt,
        profileCompletionPercentage: profileCompletionPercentage,
      );
    } else if (updatedAt != null &&
        DateTime.now().difference(updatedAt.toLocal()).inDays > 30 * 6) {
      return ReminderBanner(
        titleText: l10n.homeReminderBannerProfileUpdateTitle,
        subtitleText: l10n.homeReminderBannerProfileUpdateSubtitle,
        ctaText: l10n.homeReminderBannerProfileUpdatePrompt,
        profileCompletionPercentage: profileCompletionPercentage,
      );
    } else {
      return const SizedBox(width: 0.0, height: 0.0);
    }
  }
}
