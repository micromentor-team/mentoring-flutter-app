import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceAndEducation extends StatelessWidget {
  final List<ExperienceInput> experience;
  final List<EducationInput> education;

  const ExperienceAndEducation({
    super.key,
    this.experience = const [],
    this.education = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.paddingMedium),
      child: Column(
        children: [
          if (experience.isNotEmpty)
            Row(children: [_Experience(experience: experience)]),
          if (education.isNotEmpty)
            Row(children: [_Education(education: education)]),
        ],
      ),
    );
  }
}

class _Experience extends StatelessWidget {
  final List<ExperienceInput> experience;
  const _Experience({required this.experience});

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
            Text(
              exp.position,
              style: bodySmallOnSurface?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(exp.companyName, style: bodySmallOnSurface),
            Text(
              "(${exp.dateRange(l10n.datePresent)}) · ${exp.timeRange}",
              style: bodySmallOnSurface,
            ),
            Text(
              [exp.city, exp.state, exp.country]
                  .nonNulls
                  .join(l10n.listSeparator),
              style: bodySmallOnSurface,
            ),
            if (exp.companyUrl != null)
              InkWell(
                onTap: () => launchUrl(Uri.parse(exp.companyUrl!)),
                child: Text(
                  exp.companyUrl!,
                  style: bodySmallOnSurface?.copyWith(
                    decoration: TextDecoration.underline,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            const SizedBox(height: Insets.paddingMedium),
          ];
        })
        .expand((i) => i)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.profileViewExperience, style: theme.textTheme.titleMedium),
        const SizedBox(height: Insets.paddingMedium),
        ...items,
      ],
    );
  }
}

class _Education extends StatelessWidget {
  final List<EducationInput> education;

  const _Education({required this.education});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodySmallOnSurface = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurface,
    );
    final l10n = AppLocalizations.of(context)!;
    final items = education
        .map((edu) => [
              Row(
                children: [
                  Text(
                    edu.schoolName,
                    style: bodySmallOnSurface?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(" ", style: bodySmallOnSurface),
                  Text(edu.dateRange(l10n.datePresent),
                      style: bodySmallOnSurface)
                ],
              ),
              Text(
                [edu.title, edu.major].nonNulls.join(l10n.listSeparator),
                style: bodySmallOnSurface,
              ),
              const SizedBox(height: Insets.paddingMedium),
            ])
        .expand((i) => i)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.profileViewEducation, style: theme.textTheme.titleMedium),
        const SizedBox(height: Insets.paddingMedium),
        ...items,
      ],
    );
  }
}

class ExperienceInput {
  final String position;
  final String companyName;
  final DateTime start;
  final DateTime? end;
  final String? city;
  final String? state;
  final String? country;
  final String? companyUrl;

  const ExperienceInput({
    required this.position,
    required this.companyName,
    required this.start,
    this.end,
    this.city,
    this.state,
    this.country,
    this.companyUrl,
  });

  String get timeRange {
    final timeDiffDays = (end ?? DateTime.now()).difference(start).inDays;
    final timeDiffYears = (timeDiffDays / 365).floor();
    final timeDiffMonths = ((timeDiffDays - timeDiffYears * 365) / 30).floor();

    final timeDiffYearsStr = stringifyDuration(timeDiffYears, "year");
    final timeDiffMonthsStr = stringifyDuration(timeDiffMonths, "month");

    return "$timeDiffYearsStr $timeDiffMonthsStr";
  }

  String dateRange(String locPresent) =>
      "${start.year} - ${end?.year ?? locPresent}";

  String stringifyDuration(int duration, String name) {
    switch (duration) {
      case 0:
        return "";
      case 1:
        return "1 $name";
      default:
        return "$duration ${name}s";
    }
  }
}

class EducationInput {
  final String schoolName;
  final DateTime start;
  final DateTime? end;
  final String? title;
  final String? major;

  const EducationInput({
    required this.schoolName,
    required this.start,
    required this.end,
    required this.title,
    this.major,
  });

  String dateRange(String locPresent) =>
      "${start.year} - ${end?.year ?? locPresent}";
}
