import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/profile_chip_padded.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMyBusiness extends StatelessWidget {
  final CompanyInput companyInput;

  const AboutMyBusiness({
    super.key,
    required this.companyInput,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textContentTheme = theme.textTheme.labelSmall
        ?.copyWith(color: theme.colorScheme.secondary);
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.paddingMedium,
            vertical: Insets.paddingSmall,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileViewAboutBusiness,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: Insets.paddingSmall),
              Wrap(
                children: [
                  Text(companyInput.name, style: theme.textTheme.titleSmall),
                  const SizedBox(width: Insets.paddingSmall),
                  if (companyInput.website != null)
                    InkWell(
                      onTap: () => launchUrl(Uri.parse(companyInput.website!)),
                      child: Text(
                        companyInput.website!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          decoration: TextDecoration.underline,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                ],
              ),
              Wrap(
                children: [
                  if (companyInput.city != null || companyInput.country != null)
                    ProfileChipPadded(
                      text: [companyInput.city, companyInput.country]
                          .nonNulls
                          .join(l10n.listSeparator),
                    ),
                  if (companyInput.industry != null)
                    ProfileChipPadded(
                      text: companyInput.industry!,
                    ),
                  if (companyInput.stage != null)
                    ProfileChipPadded(
                      text: l10n
                          .profileViewAboutBusinessStage(companyInput.stage!),
                    ),
                ],
              ),
              const SizedBox(height: Insets.paddingSmall),
              if (companyInput.expertisesSought.isNotEmpty) ...[
                Text(l10n.profileViewHelpWith, style: textContentTheme),
                Wrap(
                  children: [
                    for (final help in companyInput.expertisesSought)
                      ProfileChipPadded(text: help),
                  ],
                ),
                const SizedBox(height: Insets.paddingSmall),
              ],
              if (companyInput.mission != null) ...[
                Text(l10n.profileViewMission, style: textContentTheme),
                Text(companyInput.mission!, style: theme.textTheme.bodyMedium),
                const SizedBox(height: Insets.paddingSmall),
              ],
              if (companyInput.imageUrls.isNotEmpty)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final imageUrl in companyInput.imageUrls)
                        Padding(
                          padding:
                              const EdgeInsets.only(right: Insets.paddingSmall),
                          child: Image(
                            image: NetworkImage(imageUrl),
                            height: Dimensions.imageTile.height,
                          ),
                        ),
                    ],
                  ),
                ),
              if (companyInput.imageUrls.isNotEmpty)
                const SizedBox(height: Insets.paddingSmall),
              if (companyInput.motivation != null) ...[
                Text(l10n.profileViewMotivation, style: textContentTheme),
                Text(companyInput.motivation!,
                    style: theme.textTheme.bodyMedium),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class CompanyInput {
  final String name;
  final String? website;
  final String? stage;
  final String? city;
  final String? country;
  final String? industry;
  final List<String> expertisesSought;
  final String? mission;
  final List<String> imageUrls;
  final String? motivation;

  CompanyInput({
    required this.name,
    this.website,
    this.stage,
    this.city,
    this.country,
    this.industry,
    this.expertisesSought = const [],
    this.mission,
    this.imageUrls = const [],
    this.motivation,
  });
}
