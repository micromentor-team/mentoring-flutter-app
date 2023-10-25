import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/constants.dart';
import '../../../../utilities/utility.dart';
import '../../../shared/upload_photo_button.dart';
import 'profile_chip.dart';

const double _inlineIconSize = 16.0;

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Widget _createFooter(
  AppLocalizations l10n,
  ThemeData theme,
  String? company,
  String? companyRole,
  String? school,
  String? degreeType,
  String? linkedinUrl,
) {
  final String companyAndRole = [
    companyRole,
    company,
  ].nonNulls.join(l10n.listSeparator);
  final String schoolAndDegree = [
    school,
    degreeType,
  ].nonNulls.join(l10n.listSeparator);
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (companyAndRole.isNotEmpty)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.work_outline,
                  size: _inlineIconSize,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(width: Insets.paddingExtraSmall),
                Expanded(
                  child: Text(
                    companyAndRole,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          if (schoolAndDegree.isNotEmpty) ...[
            const SizedBox(height: Insets.paddingExtraSmall),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.school_outlined,
                  size: _inlineIconSize,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(width: Insets.paddingExtraSmall),
                Expanded(
                  child: Text(
                    schoolAndDegree,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    ),
    if (linkedinUrl != null)
      Container(
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
            ),
          ),
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            size: 24.0,
            color: theme.colorScheme.secondary,
          ),
          onPressed: () {
            debugPrint(linkedinUrl);
            _launchUrl(Uri.parse(linkedinUrl));
          },
        ),
      ),
  ]);
}

Widget _createNameAndBadges(
  AppLocalizations l10n,
  ThemeData theme,
  String fullName,
  String? pronouns,
  UserType userType,
  List<String>? affiliations,
  Widget popupMenu,
  bool isMyProfile,
) {
  List<Widget> widgets = [
    Text(
      fullName,
      style: theme.textTheme.titleMedium?.copyWith(
        color: theme.colorScheme.onSurface,
      ),
    ),
    if (pronouns != null && pronouns.isNotEmpty)
      Text("($pronouns)",
          style: theme.textTheme.bodySmall
              ?.copyWith(color: theme.colorScheme.secondary)),
    if (userType == UserType.mentor)
      ProfileChip(
        text: l10n.profileViewUserTypeMentor,
        usePrimaryColor: true,
      ),
    if (userType == UserType.entrepreneur)
      ProfileChip(
        text: l10n.profileViewUserTypeEntrepreneur,
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
    child: Stack(
      children: [
        if (!isMyProfile)
          Align(
            alignment: Alignment.topRight,
            child: popupMenu,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgets,
        )
      ],
    ),
  );
}

Widget _createVacationBanner(AppLocalizations l10n, ThemeData theme) {
  return Container(
      color: AppUtility.changeColorTone(theme.colorScheme.primary, 95),
      height: 48.0,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.paddingMedium),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.beach_access_outlined,
                size: _inlineIconSize,
                color: theme.colorScheme.onPrimaryContainer,
              ),
              const SizedBox(width: Insets.paddingExtraSmall),
              Text(
                l10n.profileViewVacationBanner,
                style: theme.textTheme.labelSmall!
                    .copyWith(color: theme.colorScheme.onPrimaryContainer),
              ),
            ],
          ),
        ),
      ]));
}

Widget _createProfilePhoto(
    BuildContext context, bool isMyProfile, String? avatarUrl) {
  final ThemeData theme = Theme.of(context);

  final Widget profilePhoto = Stack(children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(
        Radii.roundedRectRadiusMedium,
      ),
      child: Image(
        height: 88.0,
        width: 88.0,
        image: avatarUrl != null
            ? NetworkImage(avatarUrl) as ImageProvider<Object>
            : const AssetImage(Assets.blankAvatar),
        fit: BoxFit.cover,
      ),
    ),
    if (isMyProfile)
      Positioned(
        right: 4.0,
        top: 4.0,
        child: Icon(
          Icons.edit_outlined,
          color: theme.colorScheme.surface,
          size: 14.0,
        ),
      ),
  ]);
  if (isMyProfile) {
    return GestureDetector(
        child: profilePhoto,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const UploadPhotoDialog();
            },
          );
        });
  }
  return profilePhoto;
}

class ProfileBasicInfo extends StatelessWidget {
  final bool isMyProfile;
  final UserType userType;
  final String? avatarUrl;
  final String fullName;
  final String? pronouns;
  final String? company;
  final String? companyRole;
  final List<String>? affiliations;
  final String? school;
  final String? degreeType;
  final String? linkedinUrl;
  final bool vacationMode;
  final Widget popupMenu;

  const ProfileBasicInfo({
    super.key,
    required this.isMyProfile,
    required this.userType,
    this.avatarUrl,
    this.pronouns,
    this.affiliations,
    required this.fullName,
    required this.company,
    this.companyRole,
    this.school,
    this.degreeType,
    this.linkedinUrl,
    required this.vacationMode,
    required this.popupMenu,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        if (vacationMode) _createVacationBanner(l10n, theme),
        Padding(
          padding: const EdgeInsets.all(Insets.paddingMedium),
          child: Column(
            children: [
              Row(
                children: [
                  _createProfilePhoto(context, isMyProfile, avatarUrl),
                  const SizedBox(width: Insets.paddingMedium),
                  _createNameAndBadges(
                    l10n,
                    theme,
                    fullName,
                    pronouns,
                    userType,
                    affiliations,
                    popupMenu,
                    isMyProfile,
                  ),
                ],
              ),
              const SizedBox(height: Insets.paddingMedium),
              _createFooter(
                l10n,
                theme,
                company,
                companyRole,
                school,
                degreeType,
                linkedinUrl,
              ),
            ],
          ),
        )
      ],
    );
  }
}
