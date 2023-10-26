import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import 'about_my_business.dart';
import 'big_profile_chip.dart';

class _PhotoWidget extends StatelessWidget {
  final String? imageUrl;
  final double size;

  const _PhotoWidget({
    this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Insets.paddingExtraSmall),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        child: Container(
          width: size,
          height: size,
          color: theme.colorScheme.secondaryContainer,
          child: (imageUrl == null)
              ? Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                )
              : Image(
                  image: NetworkImage(imageUrl!),
                  height: size,
                  fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class EditProfileAboutMyBusiness extends StatelessWidget {
  final UserDetailedProfile userData;
  final CompanyInput companyInput;

  const EditProfileAboutMyBusiness({
    super.key,
    required this.userData,
    required this.companyInput,
  });

  Widget _createListTileSection(
      BuildContext context, String title, String content, String? nextPath) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(
        title,
        style: theme.textTheme.titleMedium!
            .copyWith(color: theme.colorScheme.primary),
      ),
      subtitle: Text(
        content,
        style: theme.textTheme.bodyLarge!
            .copyWith(color: theme.colorScheme.onBackground),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.navigate_next),
        onPressed: () {
          if (nextPath != null) {
            context.push(
              nextPath,
              extra: userData,
            );
          }
        },
      ),
    );
  }

  Widget _createPhotosSection(
      BuildContext context, String title, List<String> imageUrls) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(
        title,
        style: theme.textTheme.titleMedium!
            .copyWith(color: theme.colorScheme.primary),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _PhotoWidget(
            size: 200,
            imageUrl: (imageUrls.isNotEmpty) ? imageUrls[0] : null,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _PhotoWidget(
                size: 96,
                imageUrl: (imageUrls.length > 1) ? imageUrls[1] : null,
              ),
              _PhotoWidget(
                size: 96,
                imageUrl: (imageUrls.length > 2) ? imageUrls[2] : null,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createChipsListTile(BuildContext context, Widget titleWidget,
      List<BigProfileChip> chips, String? nextPath) {
    final ThemeData theme = Theme.of(context);

    return ListTile(
      title: titleWidget,
      subtitle: Container(
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.primary, width: 0.4),
          borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
        ),
        child: Stack(
          children: [
            if (chips.isEmpty)
              const SizedBox(
                height: 40,
              ),
            Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: Wrap(
                children: [
                  for (var chip in chips)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          end: Insets.paddingExtraSmall),
                      child: chip,
                    )
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.navigate_next),
                  onPressed: () {
                    if (nextPath != null) {
                      context.push(
                        nextPath,
                        extra: userData,
                      );
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final String businessLocation =
        (companyInput.city != null || companyInput.country != null)
            ? [
                companyInput.city,
                companyInput.country,
              ].nonNulls.join(l10n.listSeparator)
            : "";

    final topThreeTopics = companyInput.expertisesSought.take(
      Limits.profileExpertiseMaxSize,
    );
    final additionalTopics = (companyInput.expertisesSought.length >
            Limits.profileExpertiseMaxSize)
        ? companyInput.expertisesSought.sublist(Limits.profileExpertiseMaxSize)
        : [];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditMainBusinessHeader,
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        _createListTileSection(
          context,
          l10n.profileEditMainBusinessNameSection,
          companyInput.name,
          Routes.profileEditCompanyName.path,
        ),
        const Divider(),
        _createListTileSection(
          context,
          l10n.profileEditMainBusinessWebsiteSection,
          companyInput.website != null ? companyInput.website! : "",
          Routes.profileEditCompanyWebsite.path,
        ),
        const Divider(),
        _createListTileSection(
          context,
          l10n.profileEditMainBusinessLocationSection,
          businessLocation,
          Routes.profileEditCompanyLocation.path,
        ),
        const Divider(),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainBusinessIndustrySection,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          [
            if (companyInput.industry != null)
              BigProfileChip(text: companyInput.industry!)
          ],
          Routes.profileEditIndustries.path,
        ),
        const Divider(),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainBusinessStageSection,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          [
            if (companyInput.stage != null)
              BigProfileChip(text: companyInput.stage!)
          ],
          Routes.profileEditCompanyStage.path,
        ),
        const Divider(),
        _createChipsListTile(
          context,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileEditMainBusinessTopicsSection,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.primary),
              ),
              Text(
                l10n.profileEditMainBusinessTopicsHint,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.secondary),
              ),
            ],
          ),
          topThreeTopics.map((e) => BigProfileChip(text: e)).toList(),
          Routes.profileEditExpertisesTop.path,
        ),
        _createChipsListTile(
          context,
          Text(
            l10n.profileEditMainBusinessTopicsAdditionalHint,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
          additionalTopics.map((e) => BigProfileChip(text: e)).toList(),
          Routes.profileEditExpertisesAdditional.path,
        ),
        const Divider(),
        _createListTileSection(
          context,
          l10n.profileEditMainBusinessMissionSection,
          companyInput.mission != null ? companyInput.mission! : "",
          Routes.profileEditCompanyMission.path,
        ),
        const Divider(),
        _createPhotosSection(
          context,
          l10n.profileEditMainBusinessPhotosSection,
          companyInput.imageUrls,
        ),
        const Divider(),
        _createListTileSection(
          context,
          l10n.profileEditMainBusinessMotivationSection,
          companyInput.motivation != null ? companyInput.motivation! : "",
          Routes.profileEditCompanyReason.path,
        ),
      ],
    );
  }
}
