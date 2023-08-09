import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ExperienceAndEducation extends StatelessWidget {
  const ExperienceAndEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(Insets.paddingMedium),
      child: Column(
        children: [
          Row(children: [_Experience()]),
          Row(children: [_Education()]),
        ],
      ),
    );
  }
}

class _Experience extends StatelessWidget {
  static final List<_ExperienceItem> _exampleExperience = [
    _ExperienceItem(
      position: "Marketing director",
      companyName: "SVK Group",
      start: DateTime.utc(2021, 12),
      location: "Cleveland, Ohio, USA",
    ),
    _ExperienceItem(
      position: "Senior Marketing Manager",
      companyName: "SVK Group",
      start: DateTime.utc(2019, 6),
      end: DateTime.utc(2021, 11),
      location: "Cleveland, Ohio, USA",
    ),
    _ExperienceItem(
      position: "Founder",
      companyName: "MC Consulting",
      start: DateTime.utc(2016, 3),
      end: DateTime.utc(2019, 5),
      location: "Cleveland, Ohio, USA",
      companyUrl: "https://mcconsulting.com",
    ),
  ];

  const _Experience();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodySmallOnSurface = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurface,
    );
    final l10n = AppLocalizations.of(context)!;
    final items = _exampleExperience
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
              "(${exp.dateRange(l10n.present)}) · ${exp.timeRange}",
              style: bodySmallOnSurface,
            ),
            Text(exp.location, style: bodySmallOnSurface),
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
        Text(l10n.profileExperience, style: theme.textTheme.titleMedium),
        const SizedBox(height: Insets.paddingMedium),
        ...items,
      ],
    );
  }
}

class _Education extends StatelessWidget {
  static final List<_EducationItem> _exampleEducation = [
    _EducationItem(
      schoolName: "Case Western Reserve University",
      start: DateTime.utc(2017),
      end: DateTime.utc(2019),
      title: "Master of Business Administration (MBA)",
    ),
    _EducationItem(
      schoolName: "Ohio State University",
      start: DateTime.utc(2007),
      end: DateTime.utc(2010),
      title: "Bachelor of Arts (BA)",
      major: "Marketing and Advertising",
    ),
    _EducationItem(
      schoolName: "Columbus State University College",
      start: DateTime.utc(2005),
      end: DateTime.utc(2007),
      title: "Associate of Arts (AA)",
      major: "Business",
    ),
  ];

  const _Education();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodySmallOnSurface = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurface,
    );
    final l10n = AppLocalizations.of(context)!;
    final items = _exampleEducation
        .map((edu) => [
              Row(children: [
                Text(edu.schoolName,
                    style: bodySmallOnSurface?.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
                Text(" ", style: bodySmallOnSurface),
                Text(edu.yearRange, style: bodySmallOnSurface)
              ]),
              Text(
                "${edu.title}${(edu.major != null) ? ", ${edu.major}" : ""}",
                style: bodySmallOnSurface,
              ),
              const SizedBox(height: Insets.paddingMedium),
            ])
        .expand((i) => i)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.profileEducation, style: theme.textTheme.titleMedium),
        const SizedBox(height: Insets.paddingMedium),
        ...items,
      ],
    );
  }
}

class _ExperienceItem {
  final String position;
  final String companyName;
  final DateTime start;
  final DateTime? end;
  final String location;
  final String? companyUrl;

  const _ExperienceItem({
    required this.position,
    required this.companyName,
    required this.start,
    this.end,
    required this.location,
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

class _EducationItem {
  final String schoolName;
  final DateTime start;
  final DateTime end;
  final String title;
  final String? major;

  const _EducationItem({
    required this.schoolName,
    required this.start,
    required this.end,
    required this.title,
    this.major,
  });

  String get yearRange => "${start.year} - ${end.year}";
}
