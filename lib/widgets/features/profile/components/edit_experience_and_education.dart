import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'profile_experience_and_education.dart';

class EditProfileExperienceAndEducation extends StatelessWidget {
  final List<ExperienceInput> experience;
  final List<EducationInput> education;

  const EditProfileExperienceAndEducation({
    super.key,
    this.experience = const [],
    this.education = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _EditExperience(experience: experience),
        _EditEducation(education: education),
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

Widget _createListTileSection(BuildContext context, String title,
    String content, Widget? extra, String? nextPath) {
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
          context.push(nextPath);
        }
      },
    ),
  );
}

class _EditExperience extends StatelessWidget {
  final List<ExperienceInput> experience;
  const _EditExperience({required this.experience});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodySmallOnSurface = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurface,
    );
    final l10n = AppLocalizations.of(context)!;

    final items = experience
        .map((exp) {
          return [
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
                null),
            const Divider()
          ];
        })
        .expand((i) => i)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditExperience,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        ...items,
        if (experience.length < Limits.profileExperienceMaxSize) ...[
          ListTile(
            title: Text(
              l10n.profileEditExperienceAdd,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => {},
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
  final List<EducationInput> education;
  const _EditEducation({required this.education});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final items = education
        .map(
          (edu) => [
            _createListTileSection(context, edu.schoolName,
                _concatenateEducation(context, edu), null, null),
            const Divider()
          ],
        )
        .expand((i) => i)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            l10n.profileEditEducation,
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onBackground),
          ),
        ),
        ...items,
        if (education.length < Limits.profileEducationMaxSize) ...[
          ListTile(
            title: Text(
              l10n.profileEditEducationAdd,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => {},
            ),
          ),
          const Divider(),
        ]
      ],
    );
  }
}
