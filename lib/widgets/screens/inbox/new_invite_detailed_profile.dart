import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/__generated/schema/operations_invitation.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/text_divider.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

class NewInviteDetailedProfile extends StatefulWidget {
  final String channelInvitationId;
  const NewInviteDetailedProfile({
    super.key,
    required this.channelInvitationId,
  });

  @override
  State<NewInviteDetailedProfile> createState() =>
      _NewInviteDetailedProfileState();
}

class _NewInviteDetailedProfileState extends State<NewInviteDetailedProfile>
    with RouteAwareMixin<NewInviteDetailedProfile> {
  late final InvitationsProvider _invitationsProvider;
  late final ChannelsProvider _channelsProvider;
  late final UserProvider _userProvider;
  late Future<OperationResult<ChannelInvitationById>> _invitation;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _invitationsProvider = Provider.of<InvitationsProvider>(
      context,
      listen: false,
    );
    _channelsProvider = Provider.of<ChannelsProvider>(
      context,
      listen: false,
    );
    _userProvider = Provider.of<UserProvider>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _invitation = _invitationsProvider.findChannelInvitationById(
      channelInvitationId: widget.channelInvitationId,
    );
    _l10n = AppLocalizations.of(context)!;
  }

  Widget _createCard(ChannelInvitationById invitation) {
    final maybeMentorsGroupMembership = invitation.sender.offersHelp
        ? invitation.sender.groupMemberships
            .where(
              (element) => element.groupIdent == GroupIdent.mentors,
            )
            .firstOrNull
            ?.maybeWhen(
              mentorsGroupMembership: (g) => g,
              orElse: () => null,
            )
        : null;
    final maybeMenteesGroupMembership = invitation.sender.seeksHelp
        ? invitation.sender.groupMemberships
            .where(
              (element) => element.groupIdent == GroupIdent.mentees,
            )
            .firstOrNull
            ?.maybeWhen(
              menteesGroupMembership: (g) => g,
              orElse: () => null,
            )
        : null;
    final List<SkillChip> skills = invitation.sender.offersHelp
        ? maybeMentorsGroupMembership?.expertises
                .map(
                  (e) => SkillChip(skill: e.translatedValue!),
                )
                .toList() ??
            []
        : maybeMenteesGroupMembership?.soughtExpertises
                .map(
                  (e) => SkillChip(skill: e.translatedValue!),
                )
                .toList() ??
            [];
    return createProfilCardFromInfoAndCheckbox(
      info: ProfileQuickViewInfo(
        isRecommended: false,
        userType: invitation.sender.offersHelp
            ? UserType.mentor
            : UserType.entrepreneur,
        avatarUrl: invitation.sender.avatarUrl,
        fullName: invitation.sender.fullName ?? '',
        location: invitation.sender.countryOfResidence?.translatedValue ??
            _l10n.defaultValueLocation,
        company: invitation.sender.companies.firstOrNull?.name,
        companyRole: invitation.sender.jobTitle,
        ventureStage: invitation.sender.seeksHelp &&
                invitation.sender.companies.firstOrNull?.companyStage
                        ?.translatedValue !=
                    null
            ? ProfileChip(
                text: invitation
                    .sender.companies.first.companyStage!.translatedValue!,
              )
            : null,
        ventureIndustry: invitation.sender.seeksHelp &&
                maybeMenteesGroupMembership?.industry?.translatedValue != null
            ? ProfileChip(
                text: maybeMenteesGroupMembership!.industry!.translatedValue!,
              )
            : null,
        endorsements: invitation.sender.offersHelp
            ? maybeMentorsGroupMembership?.endorsements ?? 0
            : 0,
        skills: skills,
      ),
    );
  }

  Widget _createMessagePopup(ThemeData theme, String messageText, String time) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        Insets.paddingExtraLarge,
        0,
        Insets.paddingExtraLarge,
        Insets.paddingExtraLarge,
      ),
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.tertiaryContainer,
            borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.zero,
                topEnd: Radius.circular(Radii.roundedRectRadiusMedium),
                bottomStart: Radius.circular(Radii.roundedRectRadiusMedium),
                bottomEnd: Radius.circular(Radii.roundedRectRadiusMedium)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              Insets.paddingSmall,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        messageText,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onTertiaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createDeclineAcceptButtons(
    ThemeData theme,
    String senderId,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.surface,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () async {
            await _invitationsProvider.declineChannelInvitation(
              channelInvitationId: widget.channelInvitationId,
            );
            router.push(Routes.inboxInvitesReceived.path);
          },
          child: Text(
            _l10n.decline,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: Insets.paddingMedium),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.primary,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () async {
            await _invitationsProvider.acceptChannelInvitation(
              channelInvitationId: widget.channelInvitationId,
            );
            final userChannels = await _channelsProvider.queryUserChannels(
              userId: _userProvider.user!.id,
            );
            for (ChannelForUser channel in userChannels.response!) {
              if (channel.participants.any(
                    (c) => c.user.id == _userProvider.user!.id,
                  ) &&
                  channel.participants.any(
                    (c) => c.user.id == senderId,
                  )) {
                router.push('${Routes.inboxChats.path}/${channel.id}');
                return;
              }
            }
            router.push(Routes.inboxChats.path);
          },
          child: Text(
            _l10n.accept,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInviteReceivedDetailScaffold(context: context);
    });
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return FutureBuilder(
      future: _invitation,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            final ChannelInvitationById invitationResult =
                snapshot.data!.response!;
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      _createCard(invitationResult),
                      const SizedBox(height: Insets.paddingMedium),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.paddingMedium,
                        ),
                        child: TextDivider(
                          text: AppUtility.simplePastDateFormat(
                            context,
                            invitationResult.createdAt,
                          ),
                        ),
                      ),
                      const SizedBox(height: Insets.paddingMedium),
                      _createMessagePopup(
                        theme,
                        invitationResult.messageText!,
                        DateFormat.jm()
                            .format(invitationResult.createdAt)
                            .toLowerCase(),
                      ),
                      _createDeclineAcceptButtons(
                          theme, invitationResult.sender.id),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
