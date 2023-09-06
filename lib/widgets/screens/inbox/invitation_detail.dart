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
import 'package:mm_flutter_app/utilities/scaffold_utils/appbar_factory.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/profile_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/text_divider.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

class InvitationDetail extends StatefulWidget {
  final String channelInvitationId;
  final MessageDirection invitationDirection;

  const InvitationDetail({
    super.key,
    required this.channelInvitationId,
    required this.invitationDirection,
  });

  @override
  State<InvitationDetail> createState() => _InvitationDetailState();
}

class _InvitationDetailState extends State<InvitationDetail>
    with RouteAwareMixin<InvitationDetail> {
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
    _l10n = AppLocalizations.of(context)!;
    _invitation = _invitationsProvider.findChannelInvitationById(
      channelInvitationId: widget.channelInvitationId,
    );
  }

  Widget _createSenderCard(ChannelInvitationById invitation) {
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
    return createProfileCardFromInfo(
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

  Widget _createRecipientCard(ChannelInvitationById invitation) {
    final maybeMentorsGroupMembership = invitation.recipient.offersHelp
        ? invitation.recipient.groupMemberships
            .where(
              (element) => element.groupIdent == GroupIdent.mentors,
            )
            .firstOrNull
            ?.maybeWhen(
              mentorsGroupMembership: (g) => g,
              orElse: () => null,
            )
        : null;
    final maybeMenteesGroupMembership = invitation.recipient.seeksHelp
        ? invitation.recipient.groupMemberships
            .where(
              (element) => element.groupIdent == GroupIdent.mentees,
            )
            .firstOrNull
            ?.maybeWhen(
              menteesGroupMembership: (g) => g,
              orElse: () => null,
            )
        : null;
    final List<SkillChip> skills = invitation.recipient.offersHelp
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
    return createProfileCardFromInfo(
      info: ProfileQuickViewInfo(
        isRecommended: false,
        userType: invitation.recipient.offersHelp
            ? UserType.mentor
            : UserType.entrepreneur,
        avatarUrl: invitation.recipient.avatarUrl,
        fullName: invitation.recipient.fullName ?? '',
        location: invitation.recipient.countryOfResidence?.translatedValue ??
            _l10n.defaultValueLocation,
        company: invitation.recipient.companies.firstOrNull?.name,
        companyRole: invitation.recipient.jobTitle,
        ventureStage: invitation.recipient.seeksHelp &&
                invitation.recipient.companies.firstOrNull?.companyStage
                        ?.translatedValue !=
                    null
            ? ProfileChip(
                text: invitation
                    .sender.companies.first.companyStage!.translatedValue!,
              )
            : null,
        ventureIndustry: invitation.recipient.seeksHelp &&
                maybeMenteesGroupMembership?.industry?.translatedValue != null
            ? ProfileChip(
                text: maybeMenteesGroupMembership!.industry!.translatedValue!,
              )
            : null,
        endorsements: invitation.recipient.offersHelp
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

  Widget _createWithdrawButton(
    ThemeData theme,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _l10n.inboxInvitesSentFooter,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.secondary,
          ),
        ),
        const SizedBox(height: Insets.paddingMedium),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
          ),
          onPressed: () async {
            await _invitationsProvider.withdrawChannelInvitation(
              channelInvitationId: widget.channelInvitationId,
            );
            router.push(Routes.inboxInvitesSent.path);
          },
          child: Text(
            _l10n.inboxInvitesActionWithdraw,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
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
      AppBar? appBar;
      switch (widget.invitationDirection) {
        case MessageDirection.received:
          appBar =
              AppBarFactory.createInviteReceivedDetailAppBar(context: context);
          break;
        case MessageDirection.sent:
          appBar = AppBarFactory.createInviteSentDetailAppBar(context: context);
          break;
      }
      scaffoldModel.setParams(appBar: appBar);
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
    Widget Function(ChannelInvitationById) userCardCreateFunction;
    switch (widget.invitationDirection) {
      case MessageDirection.received:
        userCardCreateFunction = _createSenderCard;
        break;
      case MessageDirection.sent:
        userCardCreateFunction = _createRecipientCard;
        break;
    }
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
                      userCardCreateFunction(invitationResult),
                      const SizedBox(height: Insets.paddingMedium),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.paddingMedium,
                        ),
                        child: TextDivider(
                          text: AppUtility.simplePastDateFormat(
                            context,
                            invitationResult.createdAt.toLocal(),
                          ),
                        ),
                      ),
                      const SizedBox(height: Insets.paddingMedium),
                      _createMessagePopup(
                        theme,
                        invitationResult.messageText!,
                        DateFormat.jm()
                            .format(invitationResult.createdAt.toLocal())
                            .toLowerCase(),
                      ),
                      widget.invitationDirection == MessageDirection.received
                          ? _createDeclineAcceptButtons(
                              theme,
                              invitationResult.sender.id,
                            )
                          : widget.invitationDirection == MessageDirection.sent
                              ? _createWithdrawButton(theme)
                              : const SizedBox(height: 0, width: 0),
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
