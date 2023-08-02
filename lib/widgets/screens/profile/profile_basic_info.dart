import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/report_or_block_menu_button.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:url_launcher/url_launcher.dart';

const double _inlineIconSize = 16.0;

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Widget _createFooter(BuildContext context, String company, String? companyRole,
    String? education, String? linkedinUrl) {
  String companyAndRole = company;

  final ThemeData theme = Theme.of(context);
  if (companyRole != null) {
    companyAndRole = "$companyRole, $company";
  }

  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Icon(
            Icons.work_outline,
            size: _inlineIconSize,
          ),
          const SizedBox(width: Insets.paddingExtraSmall),
          Text(
            companyAndRole,
            style: theme.textTheme.labelSmall!
                .copyWith(color: theme.colorScheme.secondary),
          ),
        ],
      ),
      if (education != null) const SizedBox(height: Insets.paddingExtraSmall),
      if (education != null)
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(
              Icons.school_outlined,
              size: _inlineIconSize,
            ),
            const SizedBox(width: Insets.paddingExtraSmall),
            Text(
              education,
              style: theme.textTheme.labelSmall!
                  .copyWith(color: theme.colorScheme.secondary),
            ),
          ],
        ),
    ]),
    if (linkedinUrl != null)
      Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(Radii.roundedRectRadiusSmall)),
          color: theme.colorScheme.onInverseSurface,
        ),
        child: IconButton(
          style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
          )),
          icon: const ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.saturation,
            ),
            child: SizedBox(
              width: _inlineIconSize,
              child: Image(
                image: AssetImage(Assets.linkedInIcon),
              ),
            ),
          ),
          onPressed: () {
            debugPrint(linkedinUrl);
            _launchUrl(Uri.parse(linkedinUrl));
          },
        ),
      ),
  ]);
}

Widget _createNameAndBadges(BuildContext context, String fullName,
    String? pronouns, UserType userType, List<String>? affiliations) {
  final AppLocalizations l10n = AppLocalizations.of(context)!;
  final ThemeData theme = Theme.of(context);

  List<Widget> widgets = [
    Text(
      fullName,
      style: theme.textTheme.titleMedium?.copyWith(
        color: theme.colorScheme.onSurface,
      ),
    ),
    if (pronouns != null)
      Text(pronouns,
          style: theme.textTheme.bodySmall
              ?.copyWith(color: theme.colorScheme.secondary)),
    if (userType == UserType.mentor)
      ProfileChip(
        text: l10n.mentorCapitalized,
        usePrimaryColor: true,
      ),
    if (userType == UserType.entrepreneur)
      ProfileChip(
        text: l10n.entrepreneurCapitalized,
        usePrimaryColor: true,
      ),
  ];

  if (affiliations != null) {
    for (String affiliation in affiliations) {
      widgets.add(ProfileChip(
        text: affiliation,
        usePrimaryColor: true,
      ));
    }
  }
  return Expanded(
      child: Stack(children: [
    Align(
        alignment: Alignment.topRight,
        child: ReportOrBlockMenuButton(l10n: l10n)),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    )
  ]));
}

Widget _createVacationBanner(BuildContext context) {
  final AppLocalizations l10n = AppLocalizations.of(context)!;
  final ThemeData theme = Theme.of(context);
  return Container(
      color: theme.colorScheme.primaryContainer,
      height: 48.0,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(
              Icons.beach_access_outlined,
              size: _inlineIconSize,
            ),
            const SizedBox(width: Insets.paddingExtraSmall),
            Text(
              l10n.profileVacationBanner,
              style: theme.textTheme.labelSmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer),
            ),
          ],
        ),
      ]));
}

class ProfileBasicInfo extends StatelessWidget {
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String? pronouns;
  final String company;
  final String? companyRole;
  final List<String>? affiliations;
  final String? education;
  final String? linkedinUrl;
  final bool vacationMode;

  const ProfileBasicInfo({
    Key? key,
    required this.userType,
    this.avatarUrl,
    this.pronouns,
    this.affiliations,
    required this.fullName,
    required this.company,
    this.companyRole,
    this.education,
    this.linkedinUrl,
    required this.vacationMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (vacationMode) _createVacationBanner(context),
        Padding(
          padding: const EdgeInsets.all(Insets.paddingMedium),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      Radii.roundedRectRadiusMedium,
                    ),
                    child: Image(
                      image: avatarUrl != null
                          ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                          : const AssetImage(Assets.blankAvatar),
                      width: 88.0,
                      height: 88.0, // Height of the avatar
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: Insets.paddingMedium),
                  _createNameAndBadges(
                      context, fullName, pronouns, userType, affiliations),
                ],
              ),
              const SizedBox(height: Insets.paddingMedium),
              _createFooter(
                  context, company, companyRole, education, linkedinUrl),
            ],
          ),
        )
      ],
    );
  }
}
