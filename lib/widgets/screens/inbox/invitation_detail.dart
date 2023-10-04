import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/__generated/schema/operations_invitation.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/providers/models/inbox_model.dart';
import 'package:mm_flutter_app/utilities/scaffold_utils/appbar_factory.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/atoms/text_divider.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../utilities/navigation_mixin.dart';

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
    with NavigationMixin<InvitationDetail> {
  late final InvitationsProvider _invitationsProvider;
  late final InboxModel _inboxModel;
  late Future<OperationResult<ChannelInvitationById>> _invitation;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _invitationsProvider = Provider.of<InvitationsProvider>(
      context,
      listen: false,
    );
    _inboxModel = Provider.of<InboxModel>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _l10n = AppLocalizations.of(context)!;
    _invitation = _invitationsProvider.findChannelInvitationById(
      channelInvitationId: widget.channelInvitationId,
    );
  }

  Widget _createSenderCard(ChannelInvitationById invitation) {
    final maybeMentorsGroupMembership = invitation.sender.offersHelp
        ? invitation.sender.groupMemberships
            .where((element) => element.groupIdent == GroupIdent.mentors.name)
            .firstOrNull
            ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null)
        : null;
    final maybeMenteesGroupMembership = invitation.sender.seeksHelp
        ? invitation.sender.groupMemberships
            .where((element) => element.groupIdent == GroupIdent.mentees.name)
            .firstOrNull
            ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null)
        : null;
    final List<ExpertiseChip> skills = invitation.sender.offersHelp
        ? maybeMentorsGroupMembership?.expertises
                .map((e) => ExpertiseChip(expertise: e.translatedValue!))
                .toList() ??
            []
        : maybeMenteesGroupMembership?.soughtExpertises
                .map((e) => ExpertiseChip(expertise: e.translatedValue!))
                .toList() ??
            [];
    return createProfileCardFromInfo(
      info: ProfileQuickViewInfo(
        userId: invitation.sender.id,
        userType: invitation.sender.offersHelp
            ? UserType.mentor
            : UserType.entrepreneur,
        avatarUrl: invitation.sender.avatarUrl,
        fullName: invitation.sender.fullName ?? '',
        location: invitation.sender.countryOfResidence?.translatedValue ??
            _l10n.defaultValueLocation,
        company: invitation.sender.companies.firstOrNull?.name,
        companyRole: invitation.sender.jobTitle,
        endorsements: invitation.sender.offersHelp
            ? maybeMentorsGroupMembership?.endorsements ?? 0
            : 0,
        expertises: skills,
      ),
    );
  }

  Widget _createRecipientCard(ChannelInvitationById invitation) {
    final maybeMentorsGroupMembership = invitation.recipient.offersHelp
        ? invitation.recipient.groupMemberships
            .where((element) => element.groupIdent == GroupIdent.mentors.name)
            .firstOrNull
            ?.maybeWhen(mentorsGroupMembership: (g) => g, orElse: () => null)
        : null;
    final maybeMenteesGroupMembership = invitation.recipient.seeksHelp
        ? invitation.recipient.groupMemberships
            .where((element) => element.groupIdent == GroupIdent.mentees.name)
            .firstOrNull
            ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null)
        : null;
    final List<ExpertiseChip> skills = invitation.recipient.offersHelp
        ? maybeMentorsGroupMembership?.expertises
                .map((e) => ExpertiseChip(expertise: e.translatedValue!))
                .toList() ??
            []
        : maybeMenteesGroupMembership?.soughtExpertises
                .map((e) => ExpertiseChip(expertise: e.translatedValue!))
                .toList() ??
            [];
    return createProfileCardFromInfo(
      info: ProfileQuickViewInfo(
        userId: invitation.recipient.id,
        userType: invitation.recipient.offersHelp
            ? UserType.mentor
            : UserType.entrepreneur,
        avatarUrl: invitation.recipient.avatarUrl,
        fullName: invitation.recipient.fullName ?? '',
        location: invitation.recipient.countryOfResidence?.translatedValue ??
            _l10n.defaultValueLocation,
        company: invitation.recipient.companies.firstOrNull?.name,
        companyRole: invitation.recipient.jobTitle,
        endorsements: invitation.recipient.offersHelp
            ? maybeMentorsGroupMembership?.endorsements ?? 0
            : 0,
        expertises: skills,
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
    AppLocalizations l10n,
    String senderId,
    String? senderName,
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
            await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DeclineReason(
                      name: senderName,
                      continueAction: () async {
                        await _invitationsProvider.declineChannelInvitation(
                          channelInvitationId: widget.channelInvitationId,
                        );
                        await _inboxModel.refreshPendingReceivedInvitations();
                        router.push(Routes.inboxInvitesReceived.path);
                      });
                });
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
            await _inboxModel.refreshPendingReceivedInvitations();
            await _inboxModel.refreshActiveChannels();
            final ChannelForUser? newChannel = _inboxModel.activeChannels
                .where((e) => e.participants.any((p) => p.user.id == senderId))
                .firstOrNull;
            if (newChannel != null) {
              router.push('${Routes.inboxChats.path}/${newChannel.id}');
            } else {
              router.push(Routes.inboxChats.path);
            }
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
            await _inboxModel.refreshPendingSentInvitations();
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

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return FutureBuilder(
      future: _invitation,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            final ChannelInvitationById invitationResult =
                snapshot.data!.response!;
            Widget Function(ChannelInvitationById)? userCardCreateFunction;
            AppBar? appBar;
            switch (widget.invitationDirection) {
              case MessageDirection.received:
                userCardCreateFunction = _createSenderCard;
                appBar = AppBarFactory.createInviteReceivedDetailAppBar(
                  context: context,
                  userId: invitationResult.sender.id,
                  userFullName: invitationResult.sender.fullName!,
                );
                break;
              case MessageDirection.sent:
                userCardCreateFunction = _createRecipientCard;
                appBar = AppBarFactory.createInviteSentDetailAppBar(
                  context: context,
                );
                break;
              default:
                break;
            }
            buildPageRouteScaffold((scaffoldModel) {
              scaffoldModel.setParams(appBar: appBar);
            });
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      if (userCardCreateFunction != null)
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
                              l10n,
                              invitationResult.sender.id,
                              invitationResult.sender.fullName)
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

class DeclineReason extends StatefulWidget {
  final String? name;
  final Function continueAction;
  const DeclineReason(
      {super.key, required this.name, required this.continueAction});

  @override
  State<DeclineReason> createState() => _DeclineReasonState();
}

class _DeclineReasonState extends State<DeclineReason> {
  int selectedReason = 0;

  @override
  void initState() {
    super.initState();
    selectedReason = 0;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    String subtitle = l10n.whyDeclineSubtitle(widget.name ?? '');

    List<String> reasons = [
      l10n.declineReasonNotGoodFit,
      l10n.declineReasonTooBusy,
      l10n.declineReasonNoReason,
      l10n.declineReasonFakeProfile,
      l10n.declineReasonInappropriate
    ];

    List<Widget> reasonWidgets = [];
    for (int i = 0; i < reasons.length; i++) {
      String reason = reasons[i];
      reasonWidgets.add(
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          value: i,
          groupValue: selectedReason,
          title: Text(reason),
          selected: i == selectedReason,
          onChanged: (currentUser) {
            setState(() {
              selectedReason = i;
            });
          },
          activeColor: theme.colorScheme.primary,
        ),
      );

      if (i < reasons.length - 1) {
        reasonWidgets.add(const Divider());
      }
    }

    Widget cancelButton = TextButton(
      child: Text(
        l10n.actionCancel,
      ),
      onPressed: () {
        context.pop();
      },
    );
    Widget reportButton = OutlinedButton(
      onPressed: () async {
        widget.continueAction();
        context.pop();
      },
      child: Text(
        l10n.actionReport,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
    );

    return AlertDialog(
      actions: [
        cancelButton,
        reportButton,
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Insets.paddingSmall),
      ),
      backgroundColor: HSLColor.fromColor(theme.colorScheme.secondary)
          .withLightness(0.95)
          .toColor(),
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
                const SizedBox(height: Insets.paddingLarge),
                Text(
                  l10n.whyDecline,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: Insets.paddingSmall),
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: Insets.paddingSmall),
              ] +
              reasonWidgets +
              [
                const SizedBox(height: Insets.paddingLarge),
              ],
        ),
      ),
    );
  }
}
