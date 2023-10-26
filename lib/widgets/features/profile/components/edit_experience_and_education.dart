import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import 'profile_experience_and_education.dart';

class EditProfileExperienceAndEducation extends StatelessWidget {
  final UserDetailedProfile userData;
  final List<ExperienceInput> experience;
  final List<EducationInput> education;

  const EditProfileExperienceAndEducation({
    super.key,
    required this.userData,
    this.experience = const [],
    this.education = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _EditExperience(
          experience: experience,
          userData: userData,
        ),
        _EditEducation(
          education: education,
          userData: userData,
        ),
      ],
    );
  }
}

String _concatenateExperience(BuildContext context, ExperienceInput exp) {
  final l10n = AppLocalizations.of(context)!;
  final String location =
      [exp.city, exp.state, exp.country].nonNulls.join(l10n.listSeparator);

  return "${exp.companyName}\n(${exp.dateRange(l10n.datePresent)}) · ${exp.timeRange}\n$location";
}

Widget _createListTileSection(
    BuildContext context,
    String title,
    String content,
    Widget? extra,
    String? nextPath,
    UserDetailedProfile userData) {
  final theme = Theme.of(context);
  return ListTile(
    title: Text(
      title,
      style: theme.textTheme.titleMedium!
          .copyWith(color: theme.colorScheme.primary),
    ),
    subtitle: (extra == null)
        ? Text(
            content,
            style: theme.textTheme.bodyLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          )
        : Column(
            children: [
              Text(
                content,
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: theme.colorScheme.onBackground),
              ),
              extra
            ],
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

class _EditExperience extends StatelessWidget {
  final UserDetailedProfile userData;
  final List<ExperienceInput> experience;
  const _EditExperience({
    required this.experience,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodySmallOnSurface = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurface,
    );
    final l10n = AppLocalizations.of(context)!;

    final List<Widget> items = [];
    for (int i = 0; i < experience.length; i++) {
      final exp = experience[i];
      items.addAll(
        [
          _createListTileSection(
            context,
            exp.position,
            _concatenateExperience(context, exp),
            (exp.companyUrl != null)
                ? InkWell(
                    onTap: () => launchUrl(Uri.parse(exp.companyUrl!)),
                    child: Text(
                      exp.companyUrl!,
                      style: bodySmallOnSurface?.copyWith(
                        decoration: TextDecoration.underline,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  )
                : null,
            '${Routes.profileEditExperience.path}/$i',
            userData,
          ),
          const Divider()
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditMainExperienceHeader,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        ...items,
        if (experience.length < Limits.profileExperienceMaxSize) ...[
          ListTile(
            title: Text(
              l10n.profileEditMainExperienceAddSection,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => context.push(
                Routes.profileEditExperienceNew.path,
                extra: userData,
              ),
            ),
          ),
          const Divider(),
        ]
      ],
    );
  }
}

String _concatenateEducation(BuildContext context, EducationInput edu) {
  final l10n = AppLocalizations.of(context)!;
  final String titleAndMajor =
      [edu.title, edu.major].nonNulls.join(l10n.listSeparator);
  return "${edu.dateRange(l10n.datePresent)}\n$titleAndMajor";
}

class _EditEducation extends StatelessWidget {
  final UserDetailedProfile userData;
  final List<EducationInput> education;
  const _EditEducation({
    required this.education,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final List<Widget> items = [];
    for (int i = 0; i < education.length; i++) {
      final edu = education[i];
      items.addAll(
        [
          _createListTileSection(
            context,
            edu.schoolName,
            _concatenateEducation(context, edu),
            null,
            '${Routes.profileEditEducation.path}/$i',
            userData,
          ),
          const Divider()
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditMainEducationHeader,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        ...items,
        if (education.length < Limits.profileEducationMaxSize) ...[
          ListTile(
            title: Text(
              l10n.profileEditMainEducationAddSection,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => context.push(
                Routes.profileEditEducationNew.path,
                extra: userData,
              ),
            ),
          ),
          const Divider(),
        ]
      ],
    );
  }
}
