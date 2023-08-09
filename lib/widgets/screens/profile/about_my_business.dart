import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_chip_padded.dart';

class AboutMyBusiness extends StatelessWidget {
  const AboutMyBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textContentTheme = theme.textTheme.labelSmall
        ?.copyWith(color: theme.colorScheme.secondary);
    final l10n = AppLocalizations.of(context)!;

    return Column(children: [
      const Divider(),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.paddingMedium,
          vertical: Insets.paddingSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.profileAboutBusiness, style: theme.textTheme.titleMedium),
            const SizedBox(height: Insets.paddingSmall),
            Row(children: [
              Text(_business.name, style: theme.textTheme.titleSmall),
              const SizedBox(width: Insets.paddingSmall),
              InkWell(
                onTap: () => launchUrl(Uri.parse(_business.url)),
                child: Text(
                  _business.url,
                  style: theme.textTheme.bodySmall?.copyWith(
                    decoration: TextDecoration.underline,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ]),
            Wrap(
              children: [
                ProfileChipPadded(
                    text: "${_business.city}, ${_business.country}"),
                ProfileChipPadded(text: _business.area),
                ProfileChipPadded(text: "${_business.stage} stage"),
              ],
            ),
            const SizedBox(height: Insets.paddingSmall),
            Text(l10n.profileHelpWith, style: textContentTheme),
            Wrap(children: [
              for (final help in _business.helpWith)
                ProfileChipPadded(text: help),
            ]),
            const SizedBox(height: Insets.paddingSmall),
            Text(l10n.profileMission, style: textContentTheme),
            Text(_business.mission, style: theme.textTheme.bodyMedium),
            const SizedBox(height: Insets.paddingSmall),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for (final imageUrl in _business.imageUrls)
                  Padding(
                    padding: const EdgeInsets.only(right: Insets.paddingSmall),
                    child: Image(
                      image: NetworkImage(imageUrl),
                      height: Dimensions.imageTile.height,
                    ),
                  ),
              ]),
            ),
            const SizedBox(height: Insets.paddingSmall),
            Text(l10n.profileMotivation, style: textContentTheme),
            Text(_business.motivation, style: theme.textTheme.bodyMedium),
          ],
        ),
      ),
    ]);
  }
}

final _business = (
  name: "Let's taco bout it",
  url: "https://letstacobout.it",
  city: "Washington D.C.",
  country: "USA",
  area: "Food products/groceries",
  stage: "Idea",
  helpWith: [
    "Marketing",
    "Starting up",
    "Technology",
  ],
  mission: '''
    Sit amet justo donec enim diam vulputate ut pharetra
    sit amet aliquam id diam maecenas ultricies. Mi eget
    mauris pharetra et ultrices neque ornare aenean euismod
    elementum nisi quis eleifend.
  '''
      .trim()
      .replaceAll("\n  ", ""),
  imageUrls: [
    "https://img.taste.com.au/qRDdmfsk/w720-h480-cfill-q80/taste/2022/09/healthy-tacos-recipe-181113-1.jpg",
    "https://pinchandswirl.com/wp-content/uploads/2022/11/Lamb-Tacos__.jpg",
  ],
  motivation: '''
    Sit amet justo donec enim diam vulputate ut pharetra
    sit amet aliquam id diam maecenas ultricies. Mi eget
    mauris pharetra et ultrices neque ornare aenean euismod
    elementum nisi quis eleifend.
  '''
      .trim()
      .replaceAll("\n  ", ""),
);
