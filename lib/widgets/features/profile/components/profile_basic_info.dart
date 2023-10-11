import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/profile/components/profile_chip.dart';
import 'package:mm_flutter_app/widgets/shared/upload_photo_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
  String? education,
  String? linkedinUrl,
) {
  final String companyAndRole = [
    companyRole,
    company,
  ].nonNulls.join(l10n.listSeparator);
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        if (education != null) const SizedBox(height: Insets.paddingExtraSmall),
        if (education != null)
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
                  education,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
      ]),
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

Widget _createNameAndBadges(
  AppLocalizations l10n,
  ThemeData theme,
  String fullName,
  String? pronouns,
  UserType userType,
  List<String>? affiliations,
  Widget popupMenu,
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
    child: Stack(
      children: [
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
                l10n.profileVacationBanner,
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
  final String? education;
  final String? linkedinUrl;
  final bool vacationMode;
  final Widget popupMenu;

  const ProfileBasicInfo({
    Key? key,
    required this.isMyProfile,
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
    required this.popupMenu,
  }) : super(key: key);

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
                  ),
                ],
              ),
              const SizedBox(height: Insets.paddingMedium),
              _createFooter(
                l10n,
                theme,
                company,
                companyRole,
                education,
                linkedinUrl,
              ),
            ],
          ),
        )
      ],
    );
  }
}
